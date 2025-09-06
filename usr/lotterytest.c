#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

#define NCHILD 3

int
main(void)
{
  int pid[NCHILD];
  int tickets[NCHILD] = {5, 10, 20};  // assign different ticket counts
  struct pstat ps;

  printf(1, "Starting lottery scheduler test...\n");

  // fork children
  for(int i = 0; i < NCHILD; i++){
    pid[i] = fork();
    if(pid[i] == 0){
      // child process: burn CPU
      while(1){
        for (volatile int i = 0;i<100000;i++);
        if (killed()) {exit(0);}
        yield();
      }
    }
    else {
      // parent: assign tickets to child
      settickets(pid[i], tickets[i]);
    }
  }

  // let them run for a while
  sleep(50);      // ~50 ticks, tune as needed

  // gather process info
  if(getpinfo(&ps) != 0){
    printf(1, "getpinfo failed\n");
    exit(0);
  }

  // print out results
  for(int i = 0; i < NPROC; i++){
    if(ps.inuse[i] && (ps.pid[i] == pid[0] || ps.pid[i] == pid[1] || ps.pid[i] == pid[2])){
      printf(1, "PID %d | tickets: %d | runticks: %d\n",
             ps.pid[i], ps.tickets[i], ps.runticks[i]);
    }
  }

  // kill children after test
  for(int i = 0; i < NCHILD; i++){
    kill(pid[i]);
  }

  wait(); wait(); wait();  // wait for children to exit

  printf(1, "Lottery test complete.\n");
  exit(0);
}
