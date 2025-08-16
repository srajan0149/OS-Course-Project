#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    int t = uptime();
    printf(1, "Uptime: %d seconds (%d ticks)\n", t/100, t);  // ticks are in 1/100 sec
    exit();
}
