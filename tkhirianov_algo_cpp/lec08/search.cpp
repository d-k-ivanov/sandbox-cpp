#include <chrono>
#include <iostream>
#include <limits>
#include <time.h>

const int RANDOM_MINIMUM = 0;
// const int RANDOM_MAXIMUM = 65535;
const int RANDOM_MAXIMUM = INT_MAX-1;

int get_randrom_int(int lower, int upper)
{
    return (rand() % (upper - lower + 1)) + lower;
}

void initialize_array(int* a, int size)
{
    srand(time(0));
    for(int i = 0; i < size; i++)
        a[i] = get_randrom_int(RANDOM_MINIMUM, RANDOM_MAXIMUM);
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

void quick_sort(int* a, int low, int high)
{
    int i = low;
    int j = high;
    int pivot = a[(i + j) / 2];
    int temp;

    while (i <= j)
    {
        while (a[i] < pivot)
            i++;
        while (a[j] > pivot)
            j--;
        if (i <= j)
        {
            temp = a[i];
            a[i] = a[j];
            a[j] = temp;
            i++;
            j--;
        }
    }
    if (j > low)
        quick_sort(a, low, j);
    if (i < high)
        quick_sort(a, i, high);
}

void print_array(int* a, int size)
{
    // Print
    std::cout << "Array A: " << std::endl;
    uint32_t sep = 1;
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

int linear_search(int* a, int size, int guess)
{
    for(int i = 0; i < size; i++)
        if (a[i] == guess)
            return i;
    return -1;
}

int binary_search(int* a, int size, int guess)
{
    // if(!is_sorted(a,size))
    //     return -2;

    for(int i = 0; i < size; i++)
        if (a[i] == guess)
            return i;
    return -1;
}

int main()
{
    // const int MAX_SIZE = 500000;
    // const int MAX_SIZE = INT_MAX;
    // const int MAX_SIZE = 2147483646;
    // const int MAX_SIZE = 214748364;
    const int MAX_SIZE = 50000000;
    std::cout << "[INFO] Generating array of " << MAX_SIZE << " records..." << std::endl;
    // int a[MAX_SIZE];
    int *a = new int[MAX_SIZE];
    int index = -2;
    int x;

    initialize_array(a, MAX_SIZE);
    // std::cout << "[INFO] BubbleSort. Running..." << std::endl;
    // begin = clock();
    // bubble_sort(a, MAX_SIZE);
    // end = clock();
    // time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    // std::cout << "[INFO] BubbleSort execution time: " << time_spent << std::endl;

    std::cout << "[INFO] QuickSort. Running..." << std::endl;
    // clock_t begin = clock();
    auto start = std::chrono::high_resolution_clock::now();
    quick_sort(a, 0, MAX_SIZE-1);
    // clock_t end = clock();
    auto elapsed = std::chrono::high_resolution_clock::now() - start;
    // double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    long long time_spent = std::chrono::duration_cast<std::chrono::nanoseconds>(elapsed).count();
    std::cout << "[INFO] QuickSort execution time: " << time_spent << std::endl;

    // print_array(a, MAX_SIZE);
    // return 0;

    while(index < 0)
    {
        std::cout << std::endl;
        std::cout
            << "\t Guess number from " << RANDOM_MINIMUM << " to " << RANDOM_MAXIMUM << ": ";
        while ((!(std::cin >> x) ||  x < RANDOM_MINIMUM ||  x > RANDOM_MAXIMUM))
        {
            std::cout
                << "\t ERROR: That's not a number between "
                << RANDOM_MINIMUM << " and " << RANDOM_MAXIMUM << ". Try again: ";
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        }

        std::cout << std::endl;

        std::cout << "[INFO] Linear Search. Running..." << std::endl;
        // begin = clock();
        start = std::chrono::high_resolution_clock::now();
        index = linear_search(a, MAX_SIZE, x);
        // end = clock();
        elapsed = std::chrono::high_resolution_clock::now() - start;
        // time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
        time_spent = std::chrono::duration_cast<std::chrono::nanoseconds>(elapsed).count();
        std::cout << std::endl;
        if(index < 0)
            std::cout << "\tResult: index = " << index << "\tvalue=N/A" << std::endl;
        else
            std::cout << "\tResult: index = " << index << "\tvalue=" << a[index] << std::endl;
        std::cout << std::endl;
        std::cout << "[INFO] Linear Search execution time: " << time_spent << std::endl;

        std::cout << std::endl;

        std::cout << "[INFO] Binary Search. Running..." << std::endl;
        // begin = clock();
        start = std::chrono::high_resolution_clock::now();
        index = binary_search(a, MAX_SIZE, x);
        // end = clock();
        elapsed = std::chrono::high_resolution_clock::now() - start;
        // time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
        time_spent = std::chrono::duration_cast<std::chrono::nanoseconds>(elapsed).count();
        std::cout << std::endl;
        if(index < 0)
            std::cout << "\tResult: index = " << index << "\tvalue=N/A" << std::endl;
        else
            std::cout << "\tResult: index = " << index << "\tvalue=" << a[index] << std::endl;
        std::cout << std::endl;
        std::cout << "[INFO] Binary Search execution time: " << time_spent << std::endl;

    }

    delete[] a;

    return 0;
}
