#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "pstat.h"
#include "spinlock.h"

int sys_fork(void)
{
    return fork();
}

int sys_exit(void)
{   int n ;

    argint(0, &n);   // fetch the first argument
    exit(n);
    return 0;        // never reached
}

int sys_wait(void)
{
    return wait();
}

int sys_kill(void)
{
    int pid;

    if(argint(0, &pid) < 0) {
        return -1;
    }

    return kill(pid);
}

int sys_getpid(void)
{
    return proc->pid;
}

int sys_sbrk(void)
{
    int addr;
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

    addr = proc->sz;

    if(growproc(n) < 0) {
        return -1;
    }

    return addr;
}

int sys_sleep(void)
{
    int n;
    uint ticks0;

    if(argint(0, &n) < 0) {
        return -1;
    }

    acquire(&tickslock);

    ticks0 = ticks;

    while(ticks - ticks0 < n){
        if(proc->killed){
            release(&tickslock);
            return -1;
        }

        sleep(&ticks, &tickslock);
    }

    release(&tickslock);
    return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
    uint xticks;

    acquire(&tickslock);
    xticks = ticks;
    release(&tickslock);

    return xticks;
}

int sys_getprocs(void)
{
    getprocs((struct uproc *)proc->tf->r1);
    return 0;
}

extern uint rseed;

int
sys_srand(void)
{
  int seed;
  if(argint(0, &seed) < 0)
    return -1;
  rseed = (uint) seed;
  return 0;
}

extern struct {
  struct spinlock lock;
  struct proc proc[NPROC];
} ptable;

int
sys_settickets(void)
{
  int pid, n_tickets;
  if(argint(0, &pid) < 0 || argint(1, &n_tickets) < 0)
    return -1;
  if(n_tickets <= 0)
    return -1;

  acquire(&ptable.lock);
  struct proc *p;
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->pid == pid && p->state != UNUSED){
      p->tickets = n_tickets;
      release(&ptable.lock);
      return 0;
    }
  }
  release(&ptable.lock);
  return -1;
}

int
sys_getpinfo(void)
{
  struct pstat *ps;
  if(argptr(0, (void*)&ps, sizeof(*ps)) < 0)
    return -1;

  acquire(&ptable.lock);
  for(int i = 0; i < NPROC; i++){
    ps->inuse[i] = (ptable.proc[i].state != UNUSED);
    ps->pid[i] = ptable.proc[i].pid;
    ps->tickets[i] = ptable.proc[i].tickets;
    ps->runticks[i] = ptable.proc[i].runticks;
    ps->boostsleft[i] = ptable.proc[i].boostsleft;
  }
  release(&ptable.lock);
  return 0;
}

int
sys_yield(void)
{
  yield(); // calls kernel yield
  return 0;
}

int
sys_killed(void)
{
  return proc->killed;  // return 1 if this process was killed, 0 otherwise
}