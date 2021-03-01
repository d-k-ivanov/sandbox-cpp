#include <iostream>

int main()
{
    int num = 10;
    int* pNum = &num;
    int** p2Num = &pNum;

    std::cout << "The address of num:   " << &num  << std::endl;
    std::cout << "The address in pNum:  " << pNum  << std::endl;
    std::cout << "The address of pNum:  " << &pNum << std::endl;
    std::cout << "The address in p2Num: " << p2Num << std::endl;

    std::cout << std::endl;

    int arr[5] {10, 20, 30, 40, 50};
    int* pArr[5];
    for(int i = 0; i < 5; i++)
    {
        pArr[i] = &(arr[i]);
        std::cout << "The address in pArr[" << i << "]: " << pArr[i] << std::endl;
    }

    for(int i = 0; i < 5; i++)
        std::cout << "*(pArr[" << i << "]): " << *(pArr[i]) << std::endl;

    for(int i = 0; i < 5; i++)
        std::cout << "*(pArr + [" << i << "]): " << *(pArr + i) << std::endl;

    for(int i = 0; i < 5; i++)
        std::cout << "*(pArr + [" << i << "]): " << **(pArr + i) << std::endl;

    return 0;
}
