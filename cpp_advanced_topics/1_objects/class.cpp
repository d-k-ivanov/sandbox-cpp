#include <iostream>

class c1
{
    int i = 0;
public:
    void setValue(const int & value);
    const int getValue();
};

struct c2
{
private:
    int i = 0;
public:
    void setValue(const int & value)
    {
        i = value;
    }

    const int getValue()
    {
        return i;
    }
};

void c1::setValue(const int & value)
{
    i = value;
}

const int c1::getValue()
{
    return i;
}

int main()
{
    const int i = 42;
    c1 object1;
    object1.setValue(i);
    std::cout << "C1: "<<  object1.getValue() << std::endl;

    const int j = 24;
    c2 object2;
    object1.setValue(j);
    std::cout << "C2: "<< object1.getValue() << std::endl;

    return 0;
}
