#include <stdio.h>

int main()
{
    auto multiply = [](const int val1) noexcept {
        return [val1](const int val2) noexcept { return val1 * val2; };
    };

    auto multiplyBy3 = multiply(3);
    int  res         = multiplyBy3(18);

    // same compilation
    // int res = multiply(3)(18);

    printf("Result: %i\n", res);

    return 0;
}
