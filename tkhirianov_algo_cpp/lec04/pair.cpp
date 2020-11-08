#include <iostream>

struct t_Pair
{
    int a;
    int b;
};

t_Pair get_pair(int x)
{
    t_Pair result;

    result.a = x * x;
    result.b = x * x * x;
    return result;
}

void mod_pair(t_Pair* p)
{
    p->a = p->a - 1;
    (*p).b = (*p).b - 10;
}

int main()
{
    int x;
    std::cout << "Enter a number: ";
    std::cin >> x;

    t_Pair pair = get_pair(x);
    std::cout << "A = " << pair.a << std::endl;
    std::cout << "B = " << pair.b << std::endl;

    std::cout << "------------------------------" << std::endl;
    mod_pair(&pair);
    std::cout << "A = " << pair.a << std::endl;
    std::cout << "B = " << pair.b << std::endl;

    return 0;
}
