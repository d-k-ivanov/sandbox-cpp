#include <functional>
#include <iostream>
#include <string>
#include <vector>

namespace MainFinctional
{
    void HelloWorld()
    {
        std::cout << "Hello World!" << std::endl;
    }

    void HelloWorldName(const std::string& name)
    {
        std::cout << name << ": Hello World!" << std::endl;
    }

    void PrintValue(int value)
    {
        std::cout << "Value: " << value << std::endl;
    }

    void ForEach(const std::vector<int>& values, void (*func)(int))
    {
        for (const int value : values)
            func(value);
    }

    void ForEach2(const std::vector<int>& values, const std::function<void(int)>& func)
    {
        for (const int value : values)
            func(value);
    }

    void Main()
    {
        HelloWorld();
        void (*functionVar0)() = HelloWorld;
        functionVar0();

        using HelloWorldFunction0 = void(*)();
        const HelloWorldFunction0 functionVar00 = HelloWorld;
        functionVar00();

        HelloWorldName("Hello_World0");
        const auto functionVar1 = HelloWorldName;
        const auto functionVar2 = &HelloWorldName;
        functionVar1("functionVar1");
        functionVar2("functionVar2");

        void (*functionVar3)(const std::string&) = HelloWorldName;
        functionVar3("functionVar3");

        // typedef void(*HelloWorldFunction)();
        using HelloWorldFunction = void(*)(const std::string&);
        const HelloWorldFunction functionVar4 = HelloWorldName;
        functionVar4("functionVar4");

        const std::vector<int> values = {1, 5, 4, 2, 3};
        ForEach(values, PrintValue);

        const std::vector<int> values2 = {10, 50, 40, 20, 30};
        ForEach(values2, [](const int value) { std::cout << "Value: " << value << std::endl; });

        int a = 10;
        // []  - pass objects to the lambda
        // [=] - everything by value: copying
        // [&] - everything by reference
        // [variable] - single variable
        auto lambda = [=](const int value)
        {
            std::cout << "Value: " << value << ", " << a << std::endl;
        };
        ForEach2(values, lambda);

        auto lambda2 = [=](const int value) mutable
        {
            a = 7; // Allowed due to mutable specifier
            std::cout << "Value: " << value << ", " << a << std::endl;
        };
        ForEach2(values, lambda2);

        const auto it =
            std::ranges::find_if(values, [](const int value) { return value > 3; });
        std::cout << *it << std::endl;

        auto lambda3 = [=](const int value)
        {
            std::cout << "Value: " << value << ", " << a << std::endl;
        };
        ForEach2(values, lambda3);
    }
}
