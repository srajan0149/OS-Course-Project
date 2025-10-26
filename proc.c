#include "types.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "arm.h"
#include "proc.h"
#include "spinlock.h"
#include "pstat.h"

#define RAND_MAX 0x7fffffff
uint rseed = 0;

uint rand()
{
    return rseed = (rseed * 1103515245 + 12345) & RAND_MAX;
}

void srand(uint seed)
{
    rseed = seed;
}
//
// Process initialization:
// process initialize is somewhat tricky.
//  1. We need to fake the kernel stack of a new process as if the process
//     has been interrupt (a trapframe on the stack), this would allow us
//     to "return" to the correct user instruction.
//  2. We also need to fake the kernel execution for this new process. When
//     swtch switches to this (new) process, it will switch to its stack,
//     and reload registers with the saved context. We use forkret as the
//     return address (in lr register). (In x86, it will be the return address
//     pushed on the stack by the process.)
//
// The design of context switch in xv6 is interesting: after initialization,
// each CPU executes in the scheduler() function. The context switch is not
// between two processes, but instead, between the scheduler. Think of scheduler
// as the idle process.
//
struct
{
    struct spinlock lock;
    struct proc proc[NPROC];
} ptable;

static struct proc *initproc;
struct proc *proc;

int nextpid = 1;
extern void forkret(void);
extern void trapret(void);

static void wakeup1(void *chan);

void pinit(void)
{
    initlock(&ptable.lock, "ptable");
}

// PAGEBREAK: 32
//  Look in the process table for an UNUSED proc.
//  If found, change state to EMBRYO and initialize
//  state required to run in the kernel.
//  Otherwise return 0.
static struct proc *allocproc(void)
{
    struct proc *p;
    char *sp;

    acquire(&ptable.lock);

    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
        if (p->state == UNUSED)
        {
            goto found;
        }
    }

    release(&ptable.lock);
    return 0;

found:
    p->state = EMBRYO;
    p->pid = nextpid++;
    p->tickets = 1; // default one ticket
    p->runticks = 0;
    p->boostsleft = 0;

    p->num_syscalls = 0;
    p->runticks = 0;
    p->tickets = (p->parent->tickets < 1) ? 1 : p->parent->tickets;
    p->boostsleft = 0;
    p->wake_at = 0; // 0 if process is not sleeping on ticks

    p->is_thread = 0;
    p->kstack = kalloc();
    release(&ptable.lock);

    // Allocate kernel stack.
    if ((p->kstack = alloc_page()) == 0)
    {
        p->state = UNUSED;
        return 0;
    }

    sp = p->kstack + KSTACKSIZE;

    // Leave room for trap frame.
    sp -= sizeof(*p->tf);
    p->tf = (struct trapframe *)sp;

    // Set up new context to start executing at forkret,
    // which returns to trapret.
    sp -= 4;
    *(uint *)sp = (uint)trapret;

    sp -= 4;
    *(uint *)sp = (uint)p->kstack + KSTACKSIZE;

    sp -= sizeof(*p->context);
    p->context = (struct context *)sp;
    memset(p->context, 0, sizeof(*p->context));

    // skip the push {fp, lr} instruction in the prologue of forkret.
    // This is different from x86, in which the harderware pushes return
    // address before executing the callee. In ARM, return address is
    // loaded into the lr register, and push to the stack by the callee
    // (if and when necessary). We need to skip that instruction and let
    // it use our implementation.
    p->context->lr = (uint)forkret + 4;

    return p;
}

void error_init()
{
    panic("failed to craft first process\n");
}

// PAGEBREAK: 32
//  hand-craft the first user process. We link initcode.S into the kernel
//  as a binary, the linker will generate __binary_initcode_start/_size
void userinit(void)
{
    struct proc *p;
    extern char _binary_initcode_start[], _binary_initcode_size[];

    p = allocproc();
    initproc = p;

    if ((p->pgdir = kpt_alloc()) == NULL)
    {
        panic("userinit: out of memory?");
    }

    inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);

    p->sz = PTE_SZ;

    // craft the trapframe as if
    memset(p->tf, 0, sizeof(*p->tf));

    p->tf->r14_svc = (uint)error_init;
    p->tf->spsr = spsr_usr();
    p->tf->sp_usr = PTE_SZ; // set the user stack
    p->tf->lr_usr = 0;

    // set the user pc. The actual pc loaded into r15_usr is in
    // p->tf, the trapframe.
    p->tf->pc = 0; // beginning of initcode.S

    safestrcpy(p->name, "initcode", sizeof(p->name));
    p->cwd = namei("/");

    p->state = RUNNABLE;
}

// Grow current process's memory by n bytes.
// Return 0 on success, -1 on failure.
int growproc(int n)
{
    uint sz;

    sz = proc->sz;

    if (n > 0)
    {
        if ((sz = allocuvm(proc->pgdir, sz, sz + n)) == 0)
        {
            return -1;
        }
    }
    else if (n < 0)
    {
        if ((sz = deallocuvm(proc->pgdir, sz, sz + n)) == 0)
        {
            return -1;
        }
    }

    proc->sz = sz;
    switchuvm(proc);

    return 0;
}

// Create a new process copying p as the parent.
// Sets up stack to return as if from system call.
// Caller must set state of returned proc to RUNNABLE.
int fork(void)
{
    int i, pid;
    struct proc *np;

    // Allocate process.
    if ((np = allocproc()) == 0)
    {
        return -1;
    }

    // Copy process state from p.
    if ((np->pgdir = copyuvm(proc->pgdir, proc->sz)) == 0)
    {
        free_page(np->kstack);
        np->kstack = 0;
        np->state = UNUSED;
        return -1;
    }

    np->sz = proc->sz;
    np->parent = proc;
    *np->tf = *proc->tf;

    // Clear r0 so that fork returns 0 in the child.
    np->tf->r0 = 0;

    for (i = 0; i < NOFILE; i++)
    {
        if (proc->ofile[i])
        {
            np->ofile[i] = filedup(proc->ofile[i]);
        }
    }

    np->cwd = idup(proc->cwd);

    pid = np->pid;
    np->state = RUNNABLE;
    safestrcpy(np->name, proc->name, sizeof(proc->name));

    return pid;
}

// Exit the current process.  Does not return.
// An exited process remains in the zombie state
// until its parent calls wait() to find out it exited.

void exit(int status)
{
    struct proc *p;
    int fd;
    if (proc == initproc)
    {
        panic("init exiting");
    }

    // Close all open files.
    for (fd = 0; fd < NOFILE; fd++)
    {
        if (proc->ofile[fd])
        {
            fileclose(proc->ofile[fd]);
            proc->ofile[fd] = 0;
        }
    }

    acquire(&ptable.lock);
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
        if (p->main_thread == proc && p != proc)
        {
            // mark each thread as killed and wake so it can exit
            p->killed = 1;
            wakeup(p);
        }
    }
    release(&ptable.lock);

    iput(proc->cwd);
    proc->cwd = 0;
    acquire(&ptable.lock);

    // Parent might be sleeping in wait().
    wakeup1(proc->parent);

    // Pass abandoned children to init.
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
        if (p->parent == proc)
        {
            p->parent = initproc;

            if (p->state == ZOMBIE)
            {
                wakeup1(initproc);
            }
        }
    }

    // Jump into the scheduler, never to return.
    proc->state = ZOMBIE;
    sched();

    panic("zombie exit");
}

// Wait for a child process to exit and return its pid.
// Return -1 if this process has no children.
int wait(void)
{
    struct proc *p;
    int havekids, pid;

    acquire(&ptable.lock);

    for (;;)
    {
        // Scan through table looking for zombie children.
        havekids = 0;

        for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
        {
            if (p->parent != proc)
            {
                continue;
            }

            havekids = 1;

            if (p->state == ZOMBIE)
            {
                // Found one.
                pid = p->pid;
                free_page(p->kstack);
                p->kstack = 0;
                freevm(p->pgdir);
                p->state = UNUSED;
                p->pid = 0;
                p->parent = 0;
                p->name[0] = 0;
                p->killed = 0;
                release(&ptable.lock);

                return pid;
            }
        }

        // No point waiting if we don't have any children.
        if (!havekids || proc->killed)
        {
            release(&ptable.lock);
            return -1;
        }

        // Wait for children to exit.  (See wakeup1 call in proc_exit.)
        sleep(proc, &ptable.lock); // DOC: wait-sleep
    }
}

struct proc *hold_lottery(int total_tickets)
{
    if (total_tickets <= 0)
    {
        cprintf("this function should only be called when at least 1 process is RUNNABLE");
        return 0;
    }

    struct proc *p;
    uint winner_lottery = rand() % total_tickets;
    uint max_ticket_num = 0;

    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
        if (p->state == RUNNABLE)
        {
            max_ticket_num += p->tickets * (p->boostsleft ? 2 : 1);
            if (max_ticket_num - 1 >= winner_lottery)
                return p;
        }
    }

    panic("I am unable to compile without this line, but this is never executed");
}

// PAGEBREAK: 42
//  Per-CPU process scheduler.
//  Each CPU calls scheduler() after setting itself up.
//  Scheduler never returns.  It loops, doing:
//   - choose a process to run
//   - swtch to start running that process
//   - eventually that process transfers control
//       via swtch back to the scheduler.
void scheduler(void)
{
    struct proc *p;

    for (;;)
    {
        // Enable interrupts on this processor.
        sti();

        // Loop over process table looking for process to run.
        acquire(&ptable.lock);

        int total_tickets = 0;
        for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
        {
            if (p->state == SLEEPING)
            {
                if (p->boostsleft < MAX_BOOSTS)
                    p->boostsleft++;
                continue;
            }
            if (p->state != RUNNABLE)
            {
                continue;
            }
            // only runnable processes will participate in the lottery
            // double the number of tickets if boostsleft is non-zero
            total_tickets += p->tickets * (p->boostsleft ? 2 : 1);
        }
        if (total_tickets > 0)
        {
            p = hold_lottery(total_tickets);
            if (p->boostsleft)
                p->boostsleft--;

            // Switch to chosen process.  It is the process's job
            // to release ptable.lock and then reacquire it
            // before jumping back to us.
            proc = p;

            switchuvm(p);

            p->state = RUNNING;
            swtch(&cpu->scheduler, proc->context);
            // Process is done running for now.
            // It should have changed its p->state before coming back.
            proc = 0;
        }
        release(&ptable.lock);
    }
}

// Enter scheduler.  Must hold only ptable.lock
// and have changed proc->state.
void sched(void)
{
    int intena;

    // show_callstk ("sched");

    if (!holding(&ptable.lock))
    {
        panic("sched ptable.lock");
    }

    if (cpu->ncli != 1)
    {
        panic("sched locks");
    }

    if (proc->state == RUNNING)
    {
        panic("sched running");
    }

    if (int_enabled())
    {
        panic("sched interruptible");
    }

    intena = cpu->intena;
    swtch(&proc->context, cpu->scheduler);
    cpu->intena = intena;
}

// Give up the CPU for one scheduling round.
void yield(void)
{
    acquire(&ptable.lock); // DOC: yieldlock
    proc->state = RUNNABLE;
    sched();
    release(&ptable.lock);
}

// A fork child's very first scheduling by scheduler()
// will swtch here.  "Return" to user space.
void forkret(void)
{
    static int first = 1;

    // Still holding ptable.lock from scheduler.
    release(&ptable.lock);

    if (first)
    {
        // Some initialization functions must be run in the context
        // of a regular process (e.g., they call sleep), and thus cannot
        // be run from main().
        first = 0;
        initlog();
    }

    // Return to "caller", actually trapret (see allocproc).
}

// Atomically release lock and sleep on chan.
// Reacquires lock when awakened.
void sleep(void *chan, struct spinlock *lk)
{
    // show_callstk("sleep");

    if (proc == 0)
    {
        panic("sleep");
    }

    if (lk == 0)
    {
        panic("sleep without lk");
    }

    // Must acquire ptable.lock in order to change p->state and then call
    // sched. Once we hold ptable.lock, we can be guaranteed that we won't
    // miss any wakeup (wakeup runs with ptable.lock locked), so it's okay
    // to release lk.
    if (lk != &ptable.lock)
    {                          // DOC: sleeplock0
        acquire(&ptable.lock); // DOC: sleeplock1
        release(lk);
    }

    // Go to sleep.
    proc->chan = chan;
    proc->state = SLEEPING;
    sched();

    // Tidy up.
    proc->chan = 0;

    // Reacquire original lock.
    if (lk != &ptable.lock)
    { // DOC: sleeplock2
        release(&ptable.lock);
        acquire(lk);
    }
}

// PAGEBREAK!
//  Wake up all processes sleeping on chan. The ptable lock must be held.
static void wakeup1(void *chan)
{
    struct proc *p;

    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
        if (p->state == SLEEPING && p->chan == chan && p->wake_at <= ticks)
        {
            p->state = RUNNABLE;
            p->wake_at = 0; // reset wake_at
        }
    }
}

// Wake up all processes sleeping on chan.
void wakeup(void *chan)
{
    acquire(&ptable.lock);
    wakeup1(chan);
    release(&ptable.lock);
}

// Kill the process with the given pid. Process won't exit until it returns
// to user space (see trap in trap.c).
int kill(int pid)
{
    struct proc *p;

    acquire(&ptable.lock);

    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
        if (p->pid == pid)
        {
            p->killed = 1;

            // Wake process from sleep if necessary.
            if (p->state == SLEEPING)
            {
                p->state = RUNNABLE;
            }

            release(&ptable.lock);
            return 0;
        }
    }

    release(&ptable.lock);
    return -1;
}

// PAGEBREAK: 36
//  Print a process listing to console.  For debugging. Runs when user
//  types ^P on console. No lock to avoid wedging a stuck machine further.
void procdump(void)
{
    static char *states[] = {
        [UNUSED] "unused",
        [EMBRYO] "embryo",
        [SLEEPING] "sleep ",
        [RUNNABLE] "runble",
        [RUNNING] "run   ",
        [ZOMBIE] "zombie"};

    struct proc *p;
    char *state;

    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
        if (p->state == UNUSED)
        {
            continue;
        }

        if (p->state >= 0 && p->state < NELEM(states) && states[p->state])
        {
            state = states[p->state];
        }
        else
        {
            state = "???";
        }

        cprintf("%d %s %s\n", p->pid, state, p->name);
    }

    show_callstk("procdump: \n");
}

char *
strcpy(char *s, char *t)
{
    char *os;

    os = s;
    while ((*s++ = *t++) != 0)
        ;
    return os;
}

void getprocs(struct uproc *procs)
{
    static char *states[] = {
        [UNUSED] "unused",
        [EMBRYO] "embryo",
        [SLEEPING] "sleep ",
        [RUNNABLE] "runble",
        [RUNNING] "run   ",
        [ZOMBIE] "zombie"};
    char *state;
    struct proc *p;

    for (int i = 0; i < NPROC; i++)
    {
        p = ptable.proc + i;

        if (p->state == UNUSED)
            continue;

        if (p->state >= 0 && p->state < NELEM(states) && states[p->state])
        {
            state = states[p->state];
        }
        else
        {
            state = "???";
        }

        procs[i] = (struct uproc){
            .sz = p->sz,
            .pid = p->pid,
            .ppid = p->parent->pid,
            .num_syscalls = p->num_syscalls};

        strcpy(procs[i].state, state);
        strcpy(procs[i].name, p->name);
    }
}

int settickets(int pid, int n_tickets)
{
    struct proc *p;
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
        if (p->pid == pid)
        {
            p->tickets = n_tickets;
            return 0;
        }
    }
    return -1;
}

int getpinfo(struct pstat *pstat)
{
    struct proc *p;
    int i;
    for (p = ptable.proc, i = 0; p < &ptable.proc[NPROC] && i < NPROC; p++, i++)
    {
        if (p->state == UNUSED)
            continue;
        pstat->inuse[i] = 1;
        pstat->pid[i] = p->pid;
        pstat->boostsleft[i] = p->boostsleft;
        pstat->runticks[i] = p->runticks;
        pstat->tickets[i] = p->tickets;

        strcpy(pstat->name[i], p->name);
    }
    return 0;
}
int thread_create(uint *tid, void *(*func)(void *), void *arg)
{
    struct proc *np;
    struct proc *newProc = proc;
    uint sz;

    // Allocate a new process structure
    if ((np = allocproc()) == 0)
        return -1;

    // Share address space
    np->pgdir = newProc->pgdir;
    np->sz = newProc->sz;

    for (int i = 0; i < NOFILE; i++)
    {
        if (newProc->ofile[i])
            np->ofile[i] = filedup(newProc->ofile[i]);
    }
    np->cwd = idup(newProc->cwd);
    // Copy name
    safestrcpy(np->name, proc->name, sizeof(proc->name));

    // Allocate user stack (1 page)
    sz = np->sz;
    uint nsz = allocuvm(np->pgdir, sz, sz + PTE_SZ);
    if (nsz == 0)
    {
        np->state = UNUSED;
        return -1;
    }

    // np->stack_base = sz - PTE_SZ;
    np->sz = nsz;
    newProc->sz = nsz;
    uint stack_top = nsz;
    np->ustack = (char *)sz;

    uint sp = stack_top & ~(PTE_SHIFT - 1); // align to page boundary
    sp -= 4;                                // for return address

    sp -= 4;
    if (copyout(np->pgdir, (uint)sp, &arg, sizeof(arg)) < 0)
    {
        // deallocuvm(np->pgdir, np->stack_base, np->stack_base + PTE_SZ);
        // kfree(np->kstack);
        // np->kstack = 0;
        np->state = UNUSED;
        return -1;
    }

    // Copy trapframe from current process
    *np->tf = *newProc->tf;

    // Setup thread entry context for ARM
    np->tf->pc = (uint)func;            // program counter → entry function
    np->tf->r0 = (uint)arg;             // first argument to function
    np->tf->sp_usr = sp;                // user stack pointer (top of new stack)
    np->tf->lr_usr = (uint)thread_exit; // return address = 0 (end of thread)

    // Share open files and cwd
    np->parent = newProc;
    np->main_thread = newProc;
    np->is_thread = 1;
    np->thread_id = np->pid;
    np->retval = 0;
    np->state = RUNNABLE;

    *tid = np->thread_id;

    return 0;
}

void thread_exit(void *retval)
{
    struct proc *newProc = proc;
    // Only handle real threads here. If a main thread calls this, no-op.
    if (!newProc->is_thread)
    {
        return;
    }

    // Acquire ptable.lock and keep it held across sched().
    acquire(&ptable.lock);

    // Release current working directory if any.
    newProc->retval = retval;
    // Mark the thread as ZOMBIE so joiners can spot it.
    proc->state = ZOMBIE;

    // Wake up the main thread (so thread_join can proceed).
    wakeup(proc->main_thread);

    // Debug: verify we hold the lock right before sched().
    // If holding() macro exists in your tree, this prints 1 when correct.
    // #ifdef DEBUG
    cprintf("thread_exit: pid=%d, holding(ptable.lock)=%d\n",
            proc->pid, holding(&ptable.lock));
    // #endif

    // Call sched() while STILL HOLDING ptable.lock (this is required).
    sched();
    // release(&ptable.lock);

    // We should never reach here.
    panic("thread_exit: returned from sched()");
}
void freeproc(struct proc *p)
{
    // 1. Free kernel stack if allocated
    if (p->kstack)
    {
        kfree(p->kstack); // release kernel stack page
        p->kstack = 0;
    }

    // 2. Free user stack if it's a thread
    if (p->is_thread && p->ustack)
    {
        kfree((char *)p->ustack); // release thread's user stack
        p->ustack = 0;
    }

    // 3. Close open files
    for (int i = 0; i < NOFILE; i++)
    {
        if (p->ofile[i])
        {
            fileclose(p->ofile[i]);
            p->ofile[i] = 0;
        }
    }

    // 4. Release current working directory
    if (p->cwd)
    {
        iput(p->cwd);
        p->cwd = 0;
    }

    // 5. Reset thread metadata
    p->is_thread = 0;
    p->thread_id = 0;
    p->main_thread = 0;

    // 6. Reset process metadata
    p->pid = 0;
    safestrcpy(p->name, "", sizeof(p->name));
    p->sz = 0;

    // 7. Mark as UNUSED
    p->state = UNUSED;
    p->chan = 0;
    p->killed = 0;
}

int thread_join(uint tid, void **retval)
{
    struct proc *p;
    int found = 0;

    // Only main threads (not subthreads) should call join
    if (proc->thread_id == tid || proc->is_thread)
    {
        return -1;
    }

    acquire(&ptable.lock);

    for (;;)
    {
        found = 0;

        // Search for the thread with this tid
        for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
        {
            if (p->pid == tid && p->is_thread && p->main_thread == proc)
            {
                found = 1;

                // If it’s a zombie, clean it up
                if (p->state == ZOMBIE)
                {
                    // Free the thread’s user stack page
                    // deallocuvm(p->pgdir, p->stack_base , p->stack_base+ PTE_SZ);
                    if (retval != 0)
                        *retval = p->retval;

                    // Free kernel stack
                    if (p->kstack)
                    {
                        kfree(p->kstack);
                        p->kstack = 0;
                    }

                    // Mark as UNUSED
                    p->state = UNUSED;
                    p->pid = 0;
                    p->parent = 0;
                    // p->name[0] = 0;
                    p->killed = 0;
                    p->is_thread = 0;
                    p->main_thread = 0;
                    p->thread_id = 0;

                    release(&ptable.lock);
                    return 0;
                }
            }
        }

        // If no such thread found and we’ve checked all — invalid tid
        if (!found)
        {
            release(&ptable.lock);
            return -1;
        }

        // Sleep until a thread_exit() wakes us up
        sleep(proc, &ptable.lock);
    }
}
int waitpid(int pid, int *status)
{
    struct proc *p;
    int havekids, pid_ret;

    acquire(&ptable.lock);

    for (;;)
    {
        havekids = 0;

        // Search through the process table for child processes
        for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
        {
            if (p->parent != proc) // Only children of the calling process
                continue;

            havekids = 1;

            // Match the specific PID we’re waiting for
            if (p->pid == pid)
            {
                // If the child has exited (ZOMBIE state)
                if (p->state == ZOMBIE)
                {
                    pid_ret = p->pid;

                    if (status)
                        *status = 0;

                    // Free resources
                    buddy_kfree(p->kstack, PTE_SHIFT);
                    p->kstack = 0;

                    freevm(p->pgdir);
                    p->pgdir = 0;

                    // Reset proc fields
                    p->state = UNUSED;
                    p->pid = 0;
                    p->parent = 0;
                    p->name[0] = 0;
                    p->killed = 0;
                    p->is_thread = 0;
                    p->main_thread = 0;

                    release(&ptable.lock);
                    return pid_ret;
                }
            }
        }

        // If no children or target PID not found
        if (!havekids || proc->killed)
        {
            release(&ptable.lock);
            return -1;
        }

        // Sleep until a child exits
        sleep(proc, &ptable.lock);
    }
}

// Wake up one process sleeping on chan
void
wakeup1_chan(void *chan)
{
    struct proc *p;
    
    acquire(&ptable.lock);
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
        if(p->state == SLEEPING && p->chan == chan){
            p->state = RUNNABLE;
           
            break;
        }
    }
    release(&ptable.lock);
}
// assignment 04: task 3:
// Simple global counter for unique channels
// static int nextChannel = 1;
// struct spinlock chanlock; // lock for nextChannel

// // Initialize channel lock (call in pinit if needed)
// void chaninit(void)
// {
//     initlock(&chanlock, "chanlock");
// }

// // Returns a unique, currently unused channel
// int getChannel(void)
// {
//     int ch;

//     acquire(&chanlock);
//     ch = nextChannel++;
//     if (nextChannel <= 0) // handle integer overflow
//         nextChannel = 1;
//     release(&chanlock);

//     return ch;
// }

// // Sleep the calling process on a given channel
// void sleepChan(void* chan)
// {
//     if (chan <= 0)
//         return; // invalid channel

//     acquire(&ptable.lock); // protect process table
//     proc->chan = (void*)chan;
//     proc->state = SLEEPING;
//     sched();        // switch to scheduler
//     proc->chan = 0; // clear after wakeup
//     release(&ptable.lock);
// }

// // Wake up all processes sleeping on the given channel
// void sigChan(void* chan)
// {
//     struct proc *p;

//     if (chan <= 0)
//         return;

//     acquire(&ptable.lock);
//     for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
//     {
//         if (p->state == SLEEPING && p->chan == (void *)chan)
//         {
//             p->state = RUNNABLE;
//             p->chan = 0;
//         }
//     }
//     release(&ptable.lock);
// }

// // Wake up one process sleeping on the given channel
// void sigOneChan(void* chan)
// {
//     struct proc *p;

//     if (chan <= 0)
//         return;

//     acquire(&ptable.lock);
//     for (p = ptable.proc; p < &ptable.proc[NPROC]; p++)
//     {
//         if (p->state == SLEEPING && p->chan == (void *)chan)
//         {
//             p->state = RUNNABLE;
//             p->chan = 0;
//             break; // wake only one
//         }
//     }
//     release(&ptable.lock);
// }