#include <stdio.h>
#include <stdlib.h>

typedef struct a
{
    char *x;
    int y;
    char z;
} a;

typedef struct b
{
    int x;
    char *y;
    char z;
} b;

typedef struct c
{
    char *p;
    char c;
    short x;
} c;

typedef struct d
{
    char w;
    int x;
    short y;
    char z;
} d;

typedef struct e
{
    char c;
    int i;
    char x;
    double d;
} e;

int main()
{

    printf("The sizeof struct a is %lu\n", sizeof(a));
    printf("The sizeof struct b is %lu\n", sizeof(b));
    printf("The sizeof struct c is %lu\n", sizeof(c));
    printf("The sizeof struct d is %lu\n", sizeof(d));
    printf("The sizeof struct e is %lu\n", sizeof(e));

    return EXIT_SUCCESS;
}
