#include <iostream>

int main()
{
    int x = 2;
    int A[10];
    int y = 256;

    std::cout <<'x'<< '\t' <<'y'<< '\n';
    A[10] = 10;
    std::cout << x << '\t' << y << '\n';
    A[11] = 11;
    std::cout << x << '\t' << y << '\n';
    A[12] = 12;
    std::cout << x << '\t' << y << '\n';
    A[13] = 13;
    std::cout << x << '\t' << y << '\n';
    A[14] = 14;
    std::cout << x << '\t' << y << '\n';
    A[15] = 15;
    std::cout << x << '\t' << y << '\n';
    // A[16] = 16;
    // std::cout << x << '\t' << y << '\n';
    // A[17] = 17;
    // std::cout << x << '\t' << y << '\n';
    // A[18] = 18;
    // std::cout << x << '\t' << y << '\n';
    // A[19] = 19;
    // std::cout << x << '\t' << y << '\n';
    // A[20] = 20;
    // std::cout << x << '\t' << y << '\n';

    // All the same
    int* p1 = &(A[0]);
    int* p2 = A;

    // UD!
    // for(y = 0; y < 20; y++)
    // {
    //     A[y] = (y + 1) % 5;
    //     std::cout << A[y] << ' ';
    // }

    return 0;
}
