#include <iostream>
#include <tuple>
#include <string>

namespace MainStructuredBindings
{
    std::tuple<std::string, int> CreatePerson()
    {
        return {"Tuple", 66};
    }

    struct Person
    {
        std::string name = "Struct";
        int age = 99;
    };

    void Main()
    {
        auto person = CreatePerson();
        std::string& name = std::get<0>(person);
        int age = std::get<1>(person);
        std::cout << name << " " << age << "\n";

        // Alternative1
        std::string name1;
        int age1;
        std::tie(name1, age1) = CreatePerson();
        std::cout << name1 << " " << age1 << "\n";

        // Alternative2
        Person person2;
        int age2 = person2.age;
        std::string& name2 = person2.name;
        std::cout << name2 << " " << age2 << "\n";

        // Structured Bindings
        auto [name3, age3] = CreatePerson();
        std::cout << name3 << " " << age3 << "\n";
    }
}
