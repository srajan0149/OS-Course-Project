#include "user.h"

int main(void){

    struct pstat p;
    getpinfo(&p);

    printf(1, "INUSE\tPID\tNAME\tTICKETS\tRUNTICKS\tBOOSTSLEFT\n");
    for(int i = 0; i < NPROC; i++){
        if(p.inuse[i] == 0) continue;
        printf(1, "%d\t%d\t%s\t%d\t%d\t\t%d\n", p.inuse[i], p.pid[i], p.name[i], p.tickets[i], p.runticks[i], p.boostsleft[i]);
    }
    exit(0);
}