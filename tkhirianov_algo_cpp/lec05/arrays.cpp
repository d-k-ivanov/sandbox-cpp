#include <iostream>

void print_arrays(int* a, int* b, int size)
{
    // Print
    std::cout << "Array A: ";
    for(int i = 0; i < size; i++)
    {
        std::cout << a[i] << ' ';
    }
    std::cout << std::endl;
    std::cout << "Array B: ";
    for(int i = 0; i < size; i++)
    {
        std::cout << b[i] << ' ';
    }
    std::cout << std::endl;
}

void print_array(int* a, int size)
{
    // Print
    std::cout << "Array A: ";
    for(int i = 0; i < size; i++)
    {
        std::cout << a[i] << ' ';
    }
    std::cout << std::endl;
}

void print_separator()
{
    std::cout << "\n------------------------------\n" << std::endl;
}

int main()
{
    int N = 10;
    int A[N];
    int B[N];

    for(int i = 0; i < N; i++)
    {
        A[i] = i + 1;
    }

    std::cout << "Copy:" << std::endl;
    for(int i = 0; i < N; i++)
    {
         B[i] = A[i];
    }

    print_arrays(A, B, N);

    print_separator();

    std::cout << "Reverse copy:" << std::endl;
    for(int i = 0; i < N; i++)
    {
         B[i] = A[N - i - 1];
    }
    print_arrays(A, B, N);

    print_separator();

    std::cout << "Self reverse copy:" << std::endl;
    print_array(A, N);
    for(int i = 0; i < N/2; i++)
    {
        int tmp = A[i];
        A[i] = A[N - i - 1];
        A[N - i - 1] = tmp;

    }
    print_array(A, N);

    print_separator();

    return 0;
}
