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
int
sys_ugetpid(void)
{
  return proc->pid;
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

    proc->wake_at = ticks + n;
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

int sys_getpinfo(void){
    return getpinfo((struct pstat *)proc->tf->r1);
}

int sys_settickets(void){
    return settickets((int) proc->tf->r1, (int) proc->tf->r2);
}

int sys_srand(void){
    srand((uint) proc->tf->r1);
    return 0;
}


// assignment 03:
int sys_pgpte(void)
{
  uint addr;
  if (argint(0, (int*)&addr) < 0)  // Use argint instead of argaddr for ARM
    return -1;

  struct proc *p = proc;
  if (p == 0)
    return 0;

  pte_t *pte = walkpgdir(p->pgdir, (void*)addr, 0); // Use walkpgdir from vm.c
  if (pte == 0)
    return 0;

  return *pte;  // Return the PTE value directly
}

extern void kpt_print(void);  // forward

int
sys_kpt(void)
{
  kpt_print();
  return 0;
}

// Assignment 4:
//// New code goes here
int
sys_thread_create(void)
{
  uint thread_id;
  uint start_routine;  // function pointer
  uint arg;

  // Fetch arguments from user space
  if (argptr(0, (void*)&thread_id, sizeof(uint)) < 0)
    return -1;
  if (argptr(1, (void*)&start_routine, sizeof(void*)) < 0)
    return -1;
  if (argptr(2, (void*)&arg, sizeof(void*)) < 0)
    return -1;

  // Call kernel-level function
  return thread_create((uint*)thread_id, (void*(*)(void*))start_routine, (void*)arg);
}

int sys_thread_exit(void){
  exit(0);
  return 0;
}

int
sys_thread_join(void)
{
     uint thread_id;
  void **retval;

  // Fetch thread id and return value pointer
  if (argint(0, (int*)&thread_id) < 0)
    return -1;
  if (argptr(1, (void*)&retval, sizeof(void**)) < 0)
    return -1;

  return thread_join(thread_id, retval);

}

int sys_barrier_init(void)
{
  return barrier_init((int)proc->tf->r1);
}

int sys_barrier_check(void)
{
  
  barrier_check();
  return 0;
}
int
sys_waitpid(void)
{
  int pid;
  int *status;

  if(argint(0, &pid) < 0)
    return -1;
  if(argptr(1, (void*)&status, sizeof(*status)) < 0)
    return -1;
  return waitpid(pid, status);
}


// int sys_sleepChan(void) {
//   return -1;
// }

// int sys_getChannel(void) {
//   return -1;
// }

// int sys_sigChan(void) {
//   return -1;
// }

// int sys_sigOneChan(void) {
//   return -1;
// }