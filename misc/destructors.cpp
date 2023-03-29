#include <iostream>

class A
{
public:
    void foo();
    virtual ~A();
};

// member functions definitions of struct A:
void A::foo() { std::cout << "A::foo();\n"; }
A::~A() { std::cout << "A::~A();\n"; }

class B : A
{
public:
    virtual ~B() = default; // OK: `override` can also be applied to virtual
                   // special member functions, e.g. destructors
};

// member functions definitions of struct B:
// void B::foo() { std::cout << "B::foo();\n"; }
// B::~B() { std::cout << "B::~B();\n"; }

int main()
{
    B b;
    // b.foo();
}
