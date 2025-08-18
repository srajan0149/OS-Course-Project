#include "types.h"
#include "user.h"
#include "param.h"

int main(int argc, char *argv[]){
  if(argc <= 1){
    printf(2, "Error: Usage -> pause <seconds>\n");
    exit();  
  }

  else if(argc > 2){
    printf(2, "Warning: Too many arguments. Usage -> pause <seconds>\n");
  }
  int seconds = atoi(argv[1]);
  if(seconds <= 0){
    printf(2, "pause: invalid number of seconds\n");
    exit(); 
  }

  printf(2, "Pausing for %d seconds.... \n " , seconds);
  sleep(seconds * HZ);  
  exit();  
}

