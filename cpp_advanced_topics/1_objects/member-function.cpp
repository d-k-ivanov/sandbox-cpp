#include <iostream>

// not working with const qualifier
// class A {
//     int _value = 0;
// public:
//     void setv (const int);
//     int getv ();
// };

class A {
    int _value = 0;
public:
    void setv(const int);
    int getv();
    int getv() const;
};

void A::setv (const int a)
{
    _value = a;
};

// Optional
int A::getv()
{
    std::cout << "Mutable..." << std::endl;
    return _value;
};

int A::getv() const
{
    std::cout << "Immutable..."<< std::endl;
    return _value;
};

int main() {
    A a;
    a.setv(42);
    std::cout << "VAL: "<<  a.getv() << std::endl;

    const A b = a;
    std::cout << "VAL: "<<  b.getv() << std::endl;
    return 0;
}
