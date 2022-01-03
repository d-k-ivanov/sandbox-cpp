#include "Singleton.h"

#include <iostream>

// Singleton* Singleton::s_Instance = nullptr;

Singleton::Singleton() = default;

Singleton& Singleton::GetInstance()
{
    static Singleton instance;
    return instance;
}

void Singleton::Hello()
{
    return GetInstance().HelloImpl();
}

void Singleton::HelloImpl() const
{
    std::cout << "Singleton Address: " << &this->GetInstance() << std::endl; // NOLINT(readability-static-accessed-through-instance)
    std::cout << "Hello World!" << std::endl;
}


