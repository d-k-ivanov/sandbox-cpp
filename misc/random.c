#include <stdio.h>

long seed;

void setSeed(long newseed)
{
    seed = (newseed ^ 0x5DEECE66DL) & ((1L << 48) - 1);
}

int next(int bits)
{
    seed = (seed * 0x5DEECE66DL + 0xBL) & ((1L << 48) - 1);
    return (int)(seed >> (48 - bits));
}

int nextInt(int n)
{
    int bits, val;
    do {
        bits = next(31);
        val = bits % n;
    } while (bits - val + (n-1) < 0);
    return val;
}

void main()
{
    setSeed(76880392499L<<11);
    char alphabet[] = " abcdefghijklmnopqrstuvwxyz";
    int len=sizeof(alphabet)-1;
    int n;
    while ((n = nextInt(len)) > 0)
        printf("%c", alphabet[n]);
    printf("\n");
}
