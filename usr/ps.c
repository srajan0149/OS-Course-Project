#include "user.h"
#include "param.h"

int main(void){

    struct uproc procs[NPROC];
    struct uproc *p;
    getprocs(procs);

    printf(1, "PID \t PPID \t STATE \t\t MEM \t NAME \t NUM OF SYSCALLS\n");
    for(p = procs; p < &procs[NPROC]; p++){
        if(*p->state == '\0')
            continue;
        
        // init process dont have ppid
        if(p->pid == 1)
            p->ppid = 0;    //Convention
        printf(1, "%d \t %d \t %s \t %d \t %s \t %d\n", p->pid, p->ppid, p->state, p->sz, p->name, p->num_syscalls);
    }
    exit(0);
}