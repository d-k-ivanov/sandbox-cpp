#include "Timer.h"

#include <array>
#include <chrono>
#include <iostream>
#include <memory>


namespace MainBenchmarking
{
    struct Vector2
    {
        float x, y;
    };

    void F1()
    {
        int value = 0;
        // __debugbreak(); // Visual Studio Breakpoint
        {
            Timer timer("(int i = 0; i < 1000000; i++)");
            for (int i = 0; i < 1000000; i++)
                value += 2;
        }
        std::cout << value << std::endl;
    }

    void F2()
    {
        std::array<std::shared_ptr<Vector2>, 1000> sharedPtrs1;
        Timer timer("Make Shared -> 1000 Vector2");
        for (auto& pointer : sharedPtrs1)
            pointer = std::make_shared<Vector2>();
    }

    void F3()
    {
        std::array<std::shared_ptr<Vector2>, 1000> sharedPtrs2;
        Timer timer("New  Shared -> 1000 Vector2");
        for (auto& pointer : sharedPtrs2)
            // ReSharper disable once CppSmartPointerVsMakeFunction
            pointer = std::shared_ptr<Vector2>(new Vector2());
    }

    void F4()
    {
        std::array<std::unique_ptr<Vector2>, 1000> uniquePtrs1;
        Timer timer("Make Unique -> 1000 Vector2");
        for (auto& pointer : uniquePtrs1)
            pointer = std::make_unique<Vector2>();
    }

    void F5()
    {
        std::array<std::unique_ptr<Vector2>, 1000> uniquePtrs2;
        Timer timer("New  Unique -> 1000 Vector2");
        for (auto& pointer : uniquePtrs2)
            // ReSharper disable once CppSmartPointerVsMakeFunction
            pointer = std::unique_ptr<Vector2>(new Vector2());
    }

    void Main()
    {
        F1();

        std::cout << "---------------------\n";

        F2();
        F3();
        F4();
        F5();
    }
}
