#include <iostream>

struct t_Pair {
    int a;
    int b;
};

int main()
{
    int8_t x;
    int y;
    long long int z;
    float a;
    double b;
    t_Pair p;

    std::cout << sizeof(x)    << '\n';
    std::cout << sizeof(int)  << '\n';
    std::cout << sizeof(int*) << '\n';
    std::cout << sizeof(z)    << '\n';
    std::cout << sizeof(a)    << '\n';
    std::cout << sizeof(b)    << '\n';
    std::cout << sizeof(p)    << '\n';

    std::cout << sizeof(&x)   << '\n';
    std::cout << sizeof(&y)   << '\n';
    std::cout << sizeof(&z)   << '\n';
    std::cout << sizeof(&a)   << '\n';
    std::cout << sizeof(&b)   << '\n';
    std::cout << sizeof(&p)   << '\n';

    return 0;
}
