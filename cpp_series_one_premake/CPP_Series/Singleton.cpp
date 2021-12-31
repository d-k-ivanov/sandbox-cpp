#include "Singleton.h"

#include <iostream>

Singleton* Singleton::s_Instance = nullptr;

Singleton& Singleton::GetInstance()
{
    static Singleton instance;
    return instance;
}

void Singleton::Hello() const
{
    std::cout << "Singleton Address: " << &this->s_Instance << std::endl; // NOLINT(readability-static-accessed-through-instance)
    std::cout << "Hello World!" << std::endl;
}


