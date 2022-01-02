#include <iostream>

#pragma warning(push)
#pragma warning(disable : 4244) // ignore wrong casts
#pragma warning(disable : 4189) // ignore not used variables
namespace MainCppCasts
{
    class Base
    {
    public:
        Base();
        virtual ~Base();
    };

    Base::Base()  = default;
    Base::~Base() = default;

    class Derived final : public Base
    {
    public:
        Derived();
        ~Derived() override;
    };

    Derived::Derived()  = default;
    Derived::~Derived() = default;

    class AnotherClass final : public Base
    {
    public:
        AnotherClass();
        ~AnotherClass() override;
    };

    AnotherClass::AnotherClass()  = default;
    AnotherClass::~AnotherClass() = default;

    void Main()
    {
        int a = 5;
        double val = a; // Implicit

        double val1 = 5.25;
        // Implicit
        int a1 = val1;

        // Explicit: C style
        int a2 = (int)val1;

        const double val2 = (int)val1 + 5.1;

        std::cout << val2 << std::endl;
        std::cout << (int)(val1 + 5.1) << std::endl;

        double s = static_cast<int>(val1) + 5.1; // Explicit: Cpp style

        double value = 5.25;
        double b = (int)value + 5.3;

        AnotherClass* s1 = reinterpret_cast<AnotherClass*>(&value);

        Derived* derived = new Derived();
        Base* base = derived;

        AnotherClass* ac0 = dynamic_cast<AnotherClass*>(base);
        if (ac0)
            std::cout << "Success0\n";
        else
            std::cout << "Not-Success0\n";

        AnotherClass* ac1 = static_cast<AnotherClass*>(base);
        if (ac1)
            std::cout << "Success1\n";
        else
            std::cout << "Not-Success1\n";

        Derived* ac2 = dynamic_cast<Derived*>(base);
        if (ac2)
            std::cout << "Success2\n";
        else
            std::cout << "Not-Success2\n";
    }
}
#pragma warning(pop)
