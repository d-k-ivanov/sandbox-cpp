#include <iostream>

void print_array2d(int* a, int N, int M)
{
    std::cout << "Array A: ";
    std::cout << std::endl;
    for(int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            std::cout << a[i * M + j] << '\t';
        }
        std::cout << std::endl;
    }
}

void print_separator()
{
    std::cout << "\n------------------------------\n" << std::endl;
}

int main()
{
    int N, M;

    std::cout << "Enter N: ";
    std::cin >> N;
    std::cout << std::endl;

    std::cout << "Enter M: ";
    std::cin >> M;
    std::cout << std::endl;

    // Memory allocation
    int **A = new int*[N];
    A[0] = new int[N * M];

    // Init memory
    for(int i = 1; i < N*M; i++)
    {
        A[i] = A[0] + M * i;
    }

    // Set values
    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < M; j++)
        {
            A[i][j] = i * N + j;
        }
    }
    print_separator();

    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < M; j++)
        {
            std::cout << A[i][j] << '\t';
        }
        std::cout << '\n';
    }
    print_separator();

    print_array2d(A[0], N, M);
    print_separator();

    delete[] A[0];
    delete[] A;

    return 0;
}
