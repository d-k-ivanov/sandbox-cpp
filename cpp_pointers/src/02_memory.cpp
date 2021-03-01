#include <iostream>

int main()
{
    std::cout << "Size of boolean: " << sizeof(bool) << std::endl;
    std::cout << "Size of char: " << sizeof(char) << std::endl;
    std::cout << "Size of int: " << sizeof(int) << std::endl;
    std::cout << "Size of float: " << sizeof(float) << std::endl;
    std::cout << "Size of long: " << sizeof(long) << std::endl;
    std::cout << "Size of double: " << sizeof(double) << std::endl;

    bool* pBool;
    char* pChar;
    int* pInt;
    std::cout << "Size of boolean ptr: " << sizeof(pBool) << std::endl;
    std::cout << "Size of char ptr: " << sizeof(pChar) << std::endl;
    std::cout << "Size of int ptr: " << sizeof(pInt) << std::endl;

    return 0;
}
