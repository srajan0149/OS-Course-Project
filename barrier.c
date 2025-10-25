/*----------xv6 sync lab----------*/
#include "types.h"
#include "arm.h"
#include "spinlock.h"
#include "defs.h"
#include "barrier.h"
#include "proc.h"  // Include proc.h for struct proc definition
extern struct proc *proc;

/*
  Simple one-shot barrier implementation for the lab.
  Assumptions (per assignment):
    - barrier is used only once (no re-init).
    - all N processes will eventually call barrier_check.
*/

/* barrier state (single barrier instance) */
static int b_N = 0;
static int b_count = 0;
static int b_inited = 0;
static struct spinlock b_lock;

/* We use the address of b_count as a unique channel for sleep/wakeup.
   That address is stable for the lifetime of the kernel, and since
   the barrier is used only once it is safe & simple. */
static void *b_chan = (void*)&b_count;

int
barrier_init(int n)
{
    // Add validation
    if (!proc) {
        return -1;
    }

    if (n <= 0)
        return -1;          // invalid argument

    /* initialize only once (assignment allows single use) */
    if (b_inited)
        return -1;

    acquire(&b_lock);  // Protect initialization
    
    b_N = n;
    b_count = 0;
    initlock(&b_lock, "barrier");
    b_inited = 1;
    
    release(&b_lock);

    return 0;
}

int
barrier_check(void)
{
    // Add validation for current process
    if (!proc) {
        return -1;
    }

    if (!b_inited) {
        return -1;          // barrier not initialized
    }

    acquire(&b_lock);
    
    // Add bounds check
    if (b_count >= b_N) {
        release(&b_lock);
        return -1;
    }
    
    b_count++;

    if (b_count < b_N) {
        // Add state validation before sleep
        if (proc->killed) {
            release(&b_lock);
            return -1;
        }
        sleep(b_chan, &b_lock);
        release(&b_lock);
        return 0;
    } else {
        wakeup(b_chan);
        release(&b_lock);
        return 0;
    }
}
