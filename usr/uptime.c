#include "types.h"
#include "stat.h"
#include "user.h"
#include "param.h"
int
main(int argc, char *argv[])
{
    int ticks = uptime();   
    int seconds = ticks / HZ;  // 10 ticks = 1 second
    int minutes = seconds / 60;
    int hours = minutes / 60;
    int rem_minutes = minutes % 60;   
    int rem_seconds = seconds % 60;

    printf(1, "Uptime: %d:%d:%d (hh:mm:ss)\n", hours,rem_minutes, rem_seconds);

    exit();
}
