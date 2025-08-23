#include "termios.h"

struct tty_struct tc = {0};
struct tty_struct *tty_struct = &tc;

int
tcgetattr(int bit_index)
{
    return tty_struct->FLAG & (1 << bit_index);
}

void
tcsetattr(int bit_index, int bit_value)
{
    tty_struct->FLAG = (tty_struct->FLAG & (~bit_value)) | (bit_value << bit_index);
}