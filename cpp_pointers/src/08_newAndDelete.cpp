#include <iostream>

int main()
{
    int* p1 (new int(55));
    std::cout << "Val: " << *p1 << std::endl;
    delete p1;

    int* p2 (new int[5] {10, 20, 30, 40, 50});
    *(p2 + 1) = 666;

    for(int i = 0; i < 5; i++)
        std::cout << *(p2 + i) << " ";
    std::cout << std::endl;

    delete[] p2;

    return 0;
}
