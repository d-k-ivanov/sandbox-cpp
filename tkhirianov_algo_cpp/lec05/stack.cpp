#include <iostream>

const int MAX_SIZE = 100;

void push(int* a, int* top, int* value)
{
    a[*top] = *value;
    *top = *top + 1;

}

int pop(int* a, int* top)
{
    *top = *top - 1;
    int ret = a[*top];
    return ret;
}

void print_stack(int* a, int size)
{
    // Print
    std::cout << "Stack: ";
    if (size == 0)
    {
        std::cout << "Stack is empty" << std::endl;
        exit;
    }
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

int main()
{
    int A[MAX_SIZE];
    int top = 0;
    int x;

    std::cout << "Enter valuer or '0' for exit: ";
    std::cin >> x;
    while (x != 0) {
        std::cout << "Top = " << top << std::endl;
        push(A, &top, &x);
        std::cout << "Enter valuer or '0' for exit: ";
        std::cin >> x;
    }

    print_stack(A, top);

    std::cout << "Is the stack sorted? --> " << is_sorted(A, top) << std::endl;

    fool_sort(A, top);
    print_stack(A, top);

    // Print reverse and empty
    while (top > 0) {
        std::cout << pop(A, &top) << ' ';
    }
    std::cout << std::endl;

    print_stack(A, top);

    return 0;
}
