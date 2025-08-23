struct tty_struct{
    int FLAG;
};

enum modes{
    ICANON = 0x01
};

// 0 -> ICANON

extern struct tty_struct *tty_struct;
int tcgetattr(int bit_index);
void tcsetattr(int bit_index, int bit_value);