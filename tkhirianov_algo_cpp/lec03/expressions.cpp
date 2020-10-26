#include <iostream>
#include <cmath>

double f(double x);

double factorial(int n)
{
   int factorial=1;
   for (int i = 1; i <= n; i++)
      factorial *=i;
   return factorial;
}

// Taylor series sin(x) = (-1)^n * x^(2n+1) / (2n+1)!
double taylor(double x, int limit = 19){
    double sum = 0;
    for(int n = 0; n < limit; n++)
        sum += pow(-1.0, n) * pow(x, 2*n+1) / factorial(2*n + 1);
    return sum;
}

int main()
{
    double x;
    std::cout << "Enter number: ";
    std::cin >> x;
    std::cout << "SIN cmath:  " << std::sin(x)   << std::endl;
    std::cout << "SIN taylor: " << taylor(x, 10) << std::endl;

    return 0;
}

double f(double x)
{
    return std::sin(x);
}
