#include <iostream>

namespace MainTypeTraits
{
    // this overload is always in the set of overloads
    // ellipsis parameter has the lowest ranking for overload resolution
    void TestFunc(...)
    {
        std::cout << "Catch-all overload called\n";
    }

    // this overload is added to the set of overloads if
    // C is a reference-to-class type and Func is a pointer to member function of C
    template <class C, class F>
    auto TestFunc(C c, F f) -> decltype((void)(c.*f)(), void())
    {
        std::cout << "Reference overload called\n";
    }

    // this overload is added to the set of overloads if
    // C is a pointer-to-class type and Func is a pointer to member function of C
    template <class C, class F>
    auto TestFunc(C c, F f) -> decltype((void)((c->*f)()), void())
    {
        std::cout << "Pointer overload called\n";
    }

    struct X
    {
        void Func()
        {
        }
    };

    // ReSharper disable once CppInconsistentNaming
    void MainSFINAE()
    {
        X x;
        TestFunc(x, &X::Func);
        TestFunc(&x, &X::Func);
        TestFunc(42, 1337);
    }

    void Main()
    {
        MainSFINAE();
    }
}
