#include <cstdio>

class c1
{
    int i = 0;
public:
    void setValue(const int & value);
    const int getValue();
    const int getValue2();
};

void c1::setValue(const int & value)
{
    i = value;
}

const int c1::getValue()
{
    printf("getValue: this is %p\n", this);
    return i;
}

const int c1::getValue2()
{
    printf("getValue2\n");
    return this->getValue();
}

int main()
{
    const int i = 42;
    c1 object1;
    object1.setValue(i);
    printf("C1 address: %p\n", &object1);
    printf("C1 value: %d\n", object1.getValue2());

    return 0;
}
