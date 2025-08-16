
#include "types.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  if(argc != 2){
    printf(2, "Error: Usage -> pause <seconds>\n");
    exit();  // terminate process
  }

  int seconds = atoi(argv[1]);
  if(seconds <= 0){
    printf(2, "pause: invalid number of seconds\n");
    exit();  // terminate process
  }

  sleep(seconds * 10);  // convert seconds to ticks
  exit();  // normal completion
}

