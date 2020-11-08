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


int main()
{
    int x;
    std::cout << "Enter a number: ";
    std::cin >> x;

    t_Pair pair = get_pair(x);
    std::cout << "A = " << pair.a << std::endl;
    std::cout << "B = " << pair.b << std::endl;

    return 0;
}
