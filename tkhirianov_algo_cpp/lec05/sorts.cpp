#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <iostream>

int get_randrom_int(int lower, int upper)
{
    return (rand() % (upper - lower + 1)) + lower;
}

void initialize_array(int* a, int size)
{
    srand(time(0));

    for(int i = 0; i < size; i++)
    {
        a[i] = get_randrom_int(0, 32768);
    }
}

void initialize_array_worst(int* a, int size)
{
    srand(time(0));

    for(int i = 0; i < size; i++)
    {
        a[i] = size - i;
    }
}

void print_array(int* a, int size)
{
    // Print
    std::cout << "Array A: ";
    uint32_t sep = 0;
    for(int i = 0; i < size; i++)
    {
        std::cout << a[i] << '\t';
        if (sep % 10 == 0)
        {
            std::cout << '\n';
        }
        sep++;
    }
    std::cout << std::endl;
}

bool is_sorted(int* a, int size)
{
    int i = 0;
    while (i < size-1)
    {
        if (a[i] > a[i+1])
        {
            return false;
        }
        i++;
    }
    return true;
}

void fool_sort(int* a, int size)
{
    int i = 0;
    while (i < size-1)
    {
        if (a[i] > a[i+1])
        {
            int tmp = a[i];
            a[i] = a[i+1];
            a[i+1] = tmp;
            i = 0;
        }
        else
        {
            i++;
        }
    }
}


void bubble_sort(int* a, int size)
{
    bool is_sorted = false;
    while(!is_sorted)
    {
        int i = 0;
        is_sorted = true;
        while (i < size-1)
        {
            if (a[i] > a[i+1])
            {
                int tmp = a[i];
                a[i] = a[i+1];
                a[i+1] = tmp;
                is_sorted = false;
            }
            i++;
        }
    }
}


int main()
{
    const int MAX_SIZE = 1000;
    clock_t begin, end;
    double time_spent;
    int a[MAX_SIZE];

    // initialize_array(a, MAX_SIZE);
    initialize_array_worst(a, MAX_SIZE);
    // print_array(a, MAX_SIZE);

    std::cout << "\t-=Bubble Sort =-" << std::endl;
    std::cout << "Is sorted? --> " << is_sorted(a, MAX_SIZE) << std::endl;
    begin = clock();
    bubble_sort(a, MAX_SIZE);
    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    std::cout << "Is sorted? --> " << is_sorted(a, MAX_SIZE) << std::endl;
    std::cout << "Bubble Sort execution time: " << time_spent << std::endl;

    // initialize_array(a, MAX_SIZE);
    initialize_array_worst(a, MAX_SIZE);
    // print_array(a, MAX_SIZE);

    std::cout << "\t-=Fool Sort =-" << std::endl;
    std::cout << "Is sorted? --> " << is_sorted(a, MAX_SIZE) << std::endl;
    begin = clock();
    fool_sort(a, MAX_SIZE);
    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    std::cout << "Is sorted? --> " << is_sorted(a, MAX_SIZE) << std::endl;
    std::cout << "Fool Sort execution time: " << time_spent << std::endl;

    // print_array(a, MAX_SIZE);

    return 0;
}
