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
    }
}
