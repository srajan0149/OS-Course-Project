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