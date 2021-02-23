#include <iostream>

struct A
{
    int a_int;
    const char * a_string = "";
    float a_float;
};

// Object equal to A
class B
{
public:
    int b_int;
    const char * b_string = "";
    float b_float;
};

int main()
{
    A a;
    a.a_int = 1;
    a.a_string = "two";
    a.a_float = 3.4;

    std::cout << "INT: "<<  a.a_int << std::endl;
    std::cout << "STR: "<<  a.a_string << std::endl;
    std::cout << "FLT: "<<  a.a_float << std::endl;

    B b;
    b.b_int = 1;
    b.b_string = "two";
    b.b_float = 3.4;

    std::cout << "INT: "<<  b.b_int << std::endl;
    std::cout << "STR: "<<  b.b_string << std::endl;
    std::cout << "FLT: "<<  b.b_float << std::endl;

    return 0;
}
