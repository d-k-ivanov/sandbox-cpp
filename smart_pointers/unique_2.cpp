#include <memory>

void my_func_leak()
{
    int *valuePtr = new int(15);
    int x = 45;
    // ...
    if (x == 45)
        return; // here we have a memory leak, valuePtr is not deleted
    // ...
    delete valuePtr;
}


void my_func_no_leak()
{
    std::unique_ptr<int> valuePtr(new int(15));
    int x = 45;
    // ...
    if (x == 45)
        return; // no memory leak anymore!
    // ...
}

int main()
{
}
