#include <iostream>
#include <memory>
#include <string>

#pragma warning(push)
#pragma warning(disable : 4189) // local variable is initialized but not referenced
#pragma warning(disable : 4267) // conversion from 'size_t' to 'uint32_t', possible loss of data
namespace MainMemory
{
    struct AllocationMetrics
    {
        uint32_t TotalAllocated = 0;
        uint32_t TotalFreed = 0;

        uint32_t CurrentUsage() { return TotalAllocated - TotalFreed; }
    };

    static AllocationMetrics allocationMetrics;

    struct Object
    {
        int x, y, z;
    };

    static void PrintMemoryUsage()
    {
        std::cout << "Memort Usage: " << allocationMetrics.CurrentUsage() << " bytes\n";
    }

    void Main()
    {
        PrintMemoryUsage();
        {
            std::string name = "String1";
            PrintMemoryUsage();
            const char* name1 = "String2";
            PrintMemoryUsage();
        }

        std::cout << "------------------------------------------\n";
        PrintMemoryUsage();
        {
            std::string string = "String";
            PrintMemoryUsage();

            Object* obj = new Object; // creating on the HEAP
            PrintMemoryUsage();
            {
                std::unique_ptr<Object> obj1 = std::make_unique<Object>();
                PrintMemoryUsage();
            }
            PrintMemoryUsage();
            delete obj;
        }

        std::cout << "------------------------------------------\n";
        PrintMemoryUsage();
        std::string string1 = "String";
        PrintMemoryUsage();

        auto* obj2 = new Object;
        PrintMemoryUsage();

        {
            std::unique_ptr<Object> obj3 = std::make_unique<Object>();
            PrintMemoryUsage();
        }
        PrintMemoryUsage();
    }
}

// void* operator new(size_t size)
// {
//     printf("Allocating %zi bytes\n", size);
//     return malloc(size);
// }
//
// void operator delete(void* memory, size_t size)
// {
//     printf("Freeing %zi bytes\n", size);
//     free(memory);
// }

// void* operator new(size_t size)
// {
//     MainMemory::allocationMetrics.TotalAllocated += size;
//     return malloc(size);
// }

// Overloading the delete operator globally
// void operator delete(void* memory, const size_t size)
// {
//     MainMemory::allocationMetrics.TotalFreed += size;
//     free(memory);
// }
#pragma warning(pop)
