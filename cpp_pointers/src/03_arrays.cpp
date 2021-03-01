#include <iostream>

int main()
{
    double values[10];
    double* pValue = values;
    std::cout << "value array address: "<< values << std::endl;
    std::cout << "pValues: " << pValue << std::endl;

    int numbers[10];
    int* pNumbers = numbers;
    for(int i = 0; i < 10; i++)
        std::cout << "Number " << i <<" address: " << pNumbers + i << std::endl;

    return 0;
}

