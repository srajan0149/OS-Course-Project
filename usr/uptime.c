#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    int t = uptime();
    printf(1, "Uptime: %d seconds (%d ticks)\n", t/10, t);  // ticks are in 1/10 sec
    exit();
}
