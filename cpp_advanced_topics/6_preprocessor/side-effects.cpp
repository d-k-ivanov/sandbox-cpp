#include <cstdio>
#include <cstdlib>
#include <ctime>

namespace id
{
    static unsigned _x = 0;
    class RandN {
    public:
        unsigned operator()() {
            srand(_x + (unsigned) time(0));
            return (_x += rand()) % 100;
        }
    };
}

#define TIMES(a, b) (a * b)
#define MAX(a, b) (a > b ? a : b)

template<typename T>
void print_max(T a, T b)
{
    printf("max of %d and %d is %d\n", a, b, (a > b ? a : b));
}

int main()
{
    printf("macro returns %d\n", TIMES(5, 25));

    int one = 10;
    int two = 20;
    printf("max of %d and %d is %d\n", one, two, MAX(one, two));

    id::RandN three;
    id::RandN four;
    printf("max of %d and %d is %d\n", three(), four(), MAX(three(), four()));
    print_max(three(), four());
    return 0;
}
