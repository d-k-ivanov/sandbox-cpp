#include <iostream>

int main()
{
    double testScores[5], sum=0;
    double* pTestScores;
    pTestScores = testScores;
    for (int i = 0; i < 5; i++)
    {
        std::cout << "Enter the test score: " << std::endl;
        std::cin >> *(pTestScores + i);
        sum += *(pTestScores + i);
    }
    std::cout << "testScores address: " << testScores << std::endl;
    std::cout << "Total for all students: " << sum << std::endl;
    std::cout << "Average score: " << sum / 5 << std::endl;

    return 0;
}
