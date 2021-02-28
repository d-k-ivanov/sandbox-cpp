#include <iostream>

#include "includeA.h"
#include "includeB.h"
#include "includeA.h"
#include "includeB.h"
#include "includeA.h"
#include "includeB.h"
#include "includeA.h"
#include "includeB.h"

// Bad
// #define ONE 1

// Good
// const int ONE = 1;

// Better since c++ 11
constexpr int ONE = 1;

// Bad
// #define HELLO "Hello, World!"

// Good
// const char * HELLO = "Hello, World!";

// Better since c++ 11
constexpr const char * HELLO = "Hello, World!";

// classic example
#define MAX(a, b) (a > b ? a : b)

int main()
{
    printf("ONE is %d\n", ONE);
    puts(HELLO);
    std::cout << ONE << std::endl;
    std::cout << MAX(10,20) << std::endl;
    std::cout << MAX(20,10) << std::endl;
    return 0;
}
