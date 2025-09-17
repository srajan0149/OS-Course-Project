// user/ondemand_test.c
#include "types.h"
#include "stat.h"
#include "user.h"

#define PAGE 4096
#define N_PAGES 4096       // total pages to allocate
#define REPORT_EVERY 256   // print every REPORT_EVERY pages

int
main(int argc, char *argv[])
{
  int i;
  char *buf;
  int npages = N_PAGES;

  printf(1, "ondemand_test: allocating %d pages (%d bytes)\n", npages, npages * PAGE);

  // allocate virtual memory region
  buf = sbrk(npages * PAGE);
  if (buf == (char*)-1) {
    printf(1, "ondemand_test: sbrk failed\n");
    exit(0);
  }

  // touch pages one by one (write then read)
  for (i = 0; i < npages; i++) {
    volatile char *addr = buf + i * PAGE;
    addr[0] = (char)(i & 0xff);       // write -> should cause page-allocation on first touch
    if (addr[0] != (char)(i & 0xff)) {
      printf(1, "ondemand_test: readback mismatch at page %d\n", i);
      exit(0);
    }

    if ((i % REPORT_EVERY) == 0) {
      printf(1, "ondemand_test: touched page %d / %d\n", i, npages);
    }
  }

  printf(1, "ondemand_test: completed touches for %d pages\n", npages);

  // now walk and verify contents
  for (i = 0; i < npages; i++) {
    volatile char *addr = buf + i * PAGE;
    if (addr[0] != (char)(i & 0xff)) {
      printf(1, "ondemand_test: verification failed at page %d (got %d)\n", i, addr[0]);
      exit(0);
    }
  }

  printf(1, "ondemand_test: verification passed for %d pages\n", npages);

  printf(1, "ondemand_test: exiting\n");
  exit(0);
}
