#include <iostream>

const int N = 10;
const int M = 5;

void print_array(int* a, int size)
{
    std::cout << "Array A: ";
    std::cout << std::endl;
    for(int i = 0; i < size; i++)
    {
        std::cout << a[i] << ' ';
    }
    std::cout << std::endl;
}

void print_array2(int* a, int size_n, int size_m)
{
    std::cout << "Array A: ";
    std::cout << std::endl;
    for(int i = 0; i < size_n*size_m; i++)
    {
        std::cout << a[i] << '\t';
        if(i % size_m == size_m-1)
        std::cout << std::endl;
    }
    std::cout << std::endl;
}


void print_array_2d(int a[][M], int N, int M)
{
    std::cout << "Array A: ";
    std::cout << std::endl;
    for(int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            std::cout << a[i][j] << '\t';
        }
        std::cout << std::endl;
    }
}


void print_array_2d2(int* a, int N, int M)
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
    int A[N][M];
    int* p = (int *) A;

    for(int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            //? Default
            //# A[i][j] = i * N + j;

            //? A[i][j] == *(p + i * M + j);
            //# *(p + i * M + j) = i * N + j;

            //? *(p + i * M + j) == p[i * M + j]
            p[i * M + j] = i * N + j;
        }
    }

    std::cout << "Array A: ";
    std::cout << std::endl;
    for(int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            std::cout << A[i][j] << '\t';
        }
        std::cout << std::endl;
    }
    print_separator();

    print_array((int *)A, N*M);
    print_separator();

    print_array2((int *)A, N, M);
    print_separator();

    print_array_2d(A, N, M);
    print_separator();

    print_array_2d2(reinterpret_cast<int*>(A), N, M);
}
