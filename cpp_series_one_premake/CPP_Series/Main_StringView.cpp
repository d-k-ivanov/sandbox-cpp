#include <cstdio>
#include <iostream>
#include <memory_resource>
#include <string>
#include <cstdlib>

static uint32_t s_AllocCount = 0;
#define STRING_VIEW 1

// #pragma warning(push)
// #pragma warning(disable : 4244)
// ReSharper disable once CppParameterNamesMismatch
// void* operator new(const size_t size)
// {
//     s_AllocCount++;
//     printf("Allocating %zi bytes\n", size);
//     // void* p = malloc(size);
//     return malloc(size);
// }
// #pragma warning(pop)

namespace MainStringView
{
#if STRING_VIEW
    void PrintName(const std::string_view name)
    {
        std::cout << name << std::endl;
    }
#else
    void PrintName(const std::string& name)
    {
        std::cout << name << std::endl;
    }
#endif

    void Main()
    {
#if 1
        char buffer[64] = {};
        std::pmr::monotonic_buffer_resource string_pool{std::data(buffer), std::size(buffer)};
        const std::pmr::string name("FirstName LastName", &string_pool);
        // const std::pmr::string name("FirstName LastName");
        // const std::string name("FirstName LastName");
        // const std::string name = "Fir LastName";

#if STRING_VIEW
        const std::string_view firstName(name.c_str(), 9);
        const std::string_view lastName(name.c_str() + 10, 8);
#else
        const std::string firstName = name.substr(0, 9);
        const std::string lastName = name.substr(10, 18);
#endif
        PrintName(name);
        PrintName(firstName);
        PrintName(lastName);
#endif

#if 0
        const char* name_c = "FirstName LastName";

        const std::string_view firstName1(name_c, 9);
        const std::string_view lastName1(name_c + 10, 8);

        PrintName(firstName1);
        PrintName(lastName1);
#endif

#if 0
        PrintName("FirstName");
#endif

        // std::cout << s_AllocCount << " allocations" << std::endl; // 2 alocations o_O
        printf("Total allocations: %i\n", s_AllocCount);
    }
}
