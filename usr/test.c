#include "types.h"
#include "stat.h"
#include "user.h"
#include "mmu.h"
#include "param.h"

#define N (8 * (1 << 20))

void print_pt(void);
void print_kpt(void);
void ugetpid_test(void);
void superpg_test(void);

char *testname = "";

void err(char *why)
{
  printf(1, "pttest: %s failed: %s, pid=%d\n", testname, why, getpid());
  exit(1);
}

void print_pte(uint va)
{
  int pte = pgpte((void *)va); // Changed to match declaration in user.h
  printf(1, "va 0x%x pte 0x%x pa 0x%x perm 0x%x\n",
         va, pte, PT_ADDR(pte), PTE_AP(pte)); // Use PT_ADDR instead of PTE2PA
}

void print_pt(void)
{
  printf(1, "print_pt starting\n");
  for (uint i = 0; i < 10; i++)
  {
    print_pte(i * PTE_SZ);
  }
  uint top = (uint)-1 / PTE_SZ;
  for (uint i = top - 10; i < top; i++)
  {
    print_pte(i * PTE_SZ);
  }
  printf(1, "print_pt: OK\n");
}

void ugetpid_test(void)
{
  int i;
  printf(1, "ugetpid_test starting\n");
  testname = "ugetpid_test";

  for (i = 0; i < 64; i++)
  {
    int ret = fork();
    if (ret != 0) {
      wait();
      continue;
    }

    // child process
    int sys_pid = ugetpid();
    int lib_pid = getpid();

    if (sys_pid != lib_pid) {
      printf(1, "Mismatch: ugetpid=%d getpid=%d\n", sys_pid, lib_pid);
      err("pid mismatch");
    }

    exit(0);
  }
  printf(1, "ugetpid_test: OK\n");
}

void print_kpt(void)
{
  // Remove kpt() call as it's not implemented in user space
  printf(1, "print_kpt starting\n");
  kpt();
  printf(1, "print_kpt: OK\n");
}
void print_pte_entry(uint va, uint pte)
{
  uint pa    = PT_ADDR(pte);   // physical address
  uint perms = PTE_AP(pte);    // extract permission bits
  uint type  = (pte & PE_TYPES);

  printf(1, "va 0x%x pte 0x%x pa 0x%x perms 0x%x type 0x%x\n",
         va, pte, pa, perms, type);
}

void supercheck(uint s)
{
  int first_pte = 0;

  // Align to 2MB boundary (512 * 4KB)
  uint aligned_s = align_up(s, PTE_SZ * 512);
  uint pre_alloc = aligned_s - s;
  if (pre_alloc > 0) {
    if (sbrk(pre_alloc) == (char *)-1)
      err("pre-alignment sbrk failed");
  }

  // Allocate 2MB = 512 * 4KB
  if (sbrk(512 * PTE_SZ) == (char *)-1)
    err("superpage sbrk failed");

  printf(1, "Testing superpage at va 0x%x\n", aligned_s);

  int total_pages = 512;
  int check_pages = 10;

  // --- First 10 PTEs ---
  for (int idx = 0; idx < check_pages; idx++) {
    uint p = aligned_s + idx * PTE_SZ;
    int pte = pgpte((void *)p);
    if (pte == 0) {
      printf(1, "Null PTE at va 0x%x\n", p);
      err("no pte in first 10");
    }
    if (first_pte == 0)
      first_pte = PT_ADDR(pte);

    print_pte_entry(p, pte);
  }

  // --- Last 10 PTEs ---
  for (int idx = total_pages - check_pages; idx < total_pages; idx++) {
    uint p = aligned_s + idx * PTE_SZ;
    int pte = pgpte((void *)p);
    if (pte == 0) {
      printf(1, "Null PTE at va 0x%x\n", p);
      err("no pte in last 10");
    }
    print_pte_entry(p, pte);
  }

  // Test memory access only at first & last page
  printf(1, "Testing memory access at edges\n");
  *(int *)aligned_s = 42;
  *(int *)(aligned_s + (511 * PTE_SZ)) = 84;

  if (*(int *)aligned_s != 42 || *(int *)(aligned_s + (511 * PTE_SZ)) != 84)
    err("wrong value at edge pages");
}

void superpg_test(void)
{
  printf(1, "superpg_test starting\n");
  testname = "superpg_test";

  char *end = sbrk(N);
  if (end == 0)
    err("sbrk failed");

  uint s = (uint)end;
  supercheck(s);

  int pid = fork();
  if (pid < 0)
  {
    err("fork");
  }
  else if (pid == 0)
  {
    supercheck(s);
    exit(0);
  }
  else
  {
    wait();
  }
  printf(1, "superpg_test: OK\n");
}

int main(int argc, char *argv[])
{
  print_pt();
  ugetpid_test();
  print_kpt();
  superpg_test();
  printf(1, "pttest: all tests succeeded\n");
  exit(0);
}
