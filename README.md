
# xv6-ARM Page Table Inspection

## Overview
This project extends **xv6 for ARM** with new functionality to **inspect page tables** from user space.  
We add a syscall `pgpte()` that allows a user program to query the **page table entry (PTE)** corresponding to a given virtual address.

A test program `test` is provided to validate the implementation:
- Print page table mappings for selected addresses (`print_pt`)
- Test a user-space syscall (`ugetpid_test`)
- Print kernel page table layout (`print_kpt`) [stubbed]
- Check behavior with large allocations / superpages (`superpg_test`)

---

## Implementation Details

### New Syscall: `pgpte`
- **Prototype (user.h):**
  ```c
  int pgpte(uint va);

* **Kernel Implementation (`sysproc.c`):**

  ```c
    int 
    sys_pgpte(void)
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
  ```
* **Syscall Wiring:**

  * Added `SYS_pgpte` to `syscall.h`.
  * Added `[SYS_pgpte] sys_pgpte,` in `syscall.c`.
  * Added `SYSCALL(pgpte)` in `usys.S`.

---

### Test Program (`test.c`)

1. **`print_pt`**

   * Iterates over low and high virtual addresses.
   * Calls `pgpte(va)` to fetch the entry.
   * Prints VA, raw PTE, physical address (`PT_ADDR(pte)`), and permissions (`PTE_AP(pte)`).

2. **`ugetpid_test`**

   * Forks multiple times to ensure syscall table expansion works.
   * Currently just a stub for `ugetpid`.

3. **`print_kpt`**

   * Stubbed out; prints placeholder messages.

4. **`superpg_test`**

   * Expands heap with `sbrk(N)`.
   * Aligns to a superpage boundary.
   * Calls `supercheck` to verify contiguous mappings and read/write correctness.

---

## Example Run

When running `test` inside xv6:

```
init: starting sh
$ test
print_pt starting
va 0x0 pte 0x7FF703E pa 0x7FF7000 perm 0x3
va 0x1000 pte 0x7FF803E pa 0x7FF8000 perm 0x3
va 0x2000 pte 0x7FF901E pa 0x7FF9000 perm 0x1
va 0x3000 pte 0x7FFA03E pa 0x7FFA000 perm 0x3
...
print_pt: OK
ugetpid_test starting
ugetpid_test: OK
print_kpt starting
print_kpt: OK
superpg_test starting
Testing superpage at va 0x200000
First page at va 0x200000: PTE 0x7DEA03E (phys 0x7DEA000)
Non-contiguous pages: va 0x213000, expected pa 0x7DFD000, got pa 0x7DBD000
test: superpg_test failed: pte different, pid=3
```

---

## Observations

* `print_pt` successfully dumps valid PTEs for low VAs (heap/code/data).
* `ugetpid_test` runs successfully.
* `print_kpt` is a placeholder, not yet connected to kernel mappings.
* `superpg_test` fails due to **non-contiguous page allocation** by the xv6 allocator.
  xv6 does not guarantee physically contiguous pages for large allocations, so the test detects mismatched physical frames.

---

## Limitations / Future Work

* **Superpages**: xv6’s default allocator provides scattered pages. To pass `superpg_test`, we would need:

  * A superpage-aware allocator.
  * Or a check that tolerates non-contiguity.
* **Kernel Page Table Print (`print_kpt`)**: Currently stubbed, can be extended with a syscall that walks kernel mappings.
* **Permission decoding**: Only minimal permission bits (`PTE_AP`) shown; more flags (valid, global, device memory) could be printed.

---

## How to Build and Run

1. Clone xv6-ARM repository.
2. Apply syscall modifications (`sys_pgpte` and syscall wiring).
3. Place `test.c` in `user/`.
4. Rebuild:

   ```bash
   make clean
   
   ```
5. Boot xv6 in QEMU:

   ```bash
   make qemu
   ```
6. Inside xv6 shell:

   ```
   $ test
   ```

---

## Conclusion

This project demonstrates how to:

* Extend xv6 with new syscalls (`pgpte`).
* Inspect user-level page tables from user space.
* Validate mapping correctness with targeted tests.

`test` verifies basic functionality successfully, but highlights the limitations of xv6’s page allocator regarding superpage support.


---

