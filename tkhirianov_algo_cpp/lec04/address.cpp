#include <iostream>

void increment(int a)
{
    std::cout << "a=" << a << std::endl;
    a = a + 1;
    std::cout << "a=" << a << std::endl;
}

void increment2(int* a)
{
    std::cout << "a=" << a << std::endl;
    a = a + 1;
    std::cout << "a=" << a << std::endl;
}

void increment3(int* a)
{
    std::cout << "a=" << *a << std::endl;
    *a = *a + 1;
    std::cout << "a=" << *a << std::endl;
}

int main()
{
    int b = 3;

    std::cout << "b=" << b << std::endl;
    increment(b);
    std::cout << "b=" << b << std::endl;

    std::cout << "------------------------------" << std::endl;

    std::cout << "b=" << b << std::endl;
    increment2(&b);
    std::cout << "b=" << b << std::endl;

    std::cout << "------------------------------" << std::endl;

    std::cout << "b=" << b << std::endl;
    increment3(&b);
    std::cout << "b=" << b << std::endl;

    return 0;
}
