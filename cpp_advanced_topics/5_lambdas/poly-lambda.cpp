#include <iostream>
#include <typeinfo>

int main()
{
    auto fp = [] (const auto & n) -> auto { return n * 4; };

    long l = 42;
    auto xl = fp(l);
    std::cout << "value of xl: " << xl << " type of xl: " << typeid(xl).name() << std::endl;

    double d = 42.5;
    auto xd = fp(d);
    std::cout << "value of xd: " << xd << " type of xd: " << typeid(xd).name() << std::endl;

    int i = 42;
    auto xi = fp(i);
    std::cout << "value of xi: " << xi << " type of xi: " << typeid(xi).name() << std::endl;

    float f = 1.002;
    auto xf = fp(f);
    std::cout << "value of xf: " << xf << " type of xf: " << typeid(xf).name() << std::endl;

    uint8_t us = 256; // should be 0
    auto xus = fp(us);
    std::cout << "value of xus: " << xus << " type of xus: " << typeid(xus).name() << std::endl;

    return 0;
}
