#include <iostream>

int main()
{
    int64_t x;
    double y;

    y = 1.0;

    // WARNING!!! Don't do! Use reinterpret_cast instead.
    x = *(int64_t*)(&y);
    std::cout << "Simple Cast:\t\t" << x << '\n';

    //ERROR! Can't be statically casted from double* to int64_t*
    // x = *static_cast<int64_t *>(&y);
    // std::cout << "Static Cast:\t\t" << x << '\n';

    x = *reinterpret_cast<int64_t *>(&y);
    std::cout << "Reinterpret Cast:\t" << x << '\n';

    return 0;
}
