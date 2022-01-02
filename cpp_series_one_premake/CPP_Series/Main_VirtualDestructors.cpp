#include <iostream>

namespace MainVirtualDestructors
{
    class Base
    {
    public:
        Base()
        {
            std::cout << "Base: Constructor\n";
        }

        ~Base()
        {
            std::cout << "Base: Destructor\n";
        }
    };

    class Derived : public Base
    {
    private:
        int* m_Array;
    public:
        Derived() : m_Array(new int[5])
        {
            std::cout << "Derived: Constructor\n";
        }

        ~Derived()
        {
            delete[] m_Array;
            std::cout << "Derived: Destructor\n";
        }
    };

    class Base1
    {
    public:
        Base1()
        {
            std::cout << "Base 1: Constructor\n";
        }

        virtual ~Base1()
        {
            std::cout << "Base 1: Destructor\n";
        }
    };

    class Derived1 : public Base1
    {
    private:
        int* m_Array;
    public:
        Derived1() : m_Array(new int[5])
        {
            std::cout << "Derived 1: Constructor\n";
        }

        ~Derived1() override
        {
            delete[] m_Array;
            std::cout << "Derived 1: Destructor\n";
        }
    };

    void Main()
    {
        const Base* base = new Base();
        delete base;

        std::cout << "--------------\n";

        const Derived* derived = new Derived();
        delete derived;

        std::cout << "--------------\n";

        const Base* polymorphism = new Derived();
        delete polymorphism;

        std::cout << "--------------\n";

        const Base1* polymorphism1 = new Derived1();
        delete polymorphism1;
    }
}
