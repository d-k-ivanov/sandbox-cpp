#include <iostream>

double averageCost1(double* priceArray, int count)
{
    double sum = 0;

    for(int i = 0; i < count; i++)
        sum += *(priceArray + i);

    return sum / count;
}

double averageCost2(double* priceArray, int* count)
{
    double sum = 0;

    for(int i = 0; i < *count; i++)
        sum += *(priceArray + i);

    double avg = sum / *count;
    *count += 5;

    return avg;
}

int main()
{
    double prices[5]{ 5.00, 4.50, 3.75, 3.10, 6.75 };
    int count = 5;

    double average1 = averageCost1(prices, count);
    std::cout << "$" << average1 << std::endl;

    double average2 = averageCost2(prices, &count);
    std::cout << "$" << average2 << std::endl;
    std::cout << "Count: " << count << std::endl;

    return 0;
}

