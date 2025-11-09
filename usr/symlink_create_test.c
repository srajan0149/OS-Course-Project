#include "types.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    if (argc != 3) {
        printf(1, "Usage: symlink target path\n");
        exit(0);
    }

    if (symlink(argv[1], argv[2]) < 0)
        printf(1, "symlink failed\n");

    exit(0);
}

