#include "Timer.h"

#include <array>
#include <chrono>
#include <iostream>
#include <memory>


namespace MainBenchmarking
{
    void Main()
    {
        int value = 0;
        // __debugbreak(); // Visual Studio Breakpoint
        {
            Timer timer("(int i = 0; i < 1000000; i++)");
            for (int i = 0; i < 1000000; i++)
                value += 2;
        }
        std::cout << value << std::endl;

        std::cout << "---------------------\n";

        struct Vector2
        {
            float x, y;
        };

        {
            std::array<std::shared_ptr<Vector2>, 10000> sharedPtrs1;
            Timer timer("Make Shared -> 10000 Vector2");
            for (auto& pointer : sharedPtrs1)
                pointer = std::make_shared<Vector2>();
        }

        {
            std::array<std::shared_ptr<Vector2>, 10000> sharedPtrs2;
            Timer timer("New  Shared -> 10000 Vector2");
            for (auto& pointer : sharedPtrs2)
                // ReSharper disable once CppSmartPointerVsMakeFunction
                pointer = std::shared_ptr<Vector2>(new Vector2());
        }

        {
            std::array<std::unique_ptr<Vector2>, 10000> uniquePtrs1;
            Timer timer("Make Unique -> 10000 Vector2");
            for (auto& pointer : uniquePtrs1)
                pointer = std::make_unique<Vector2>();
        }

        {
            std::array<std::unique_ptr<Vector2>, 10000> uniquePtrs2;
            Timer timer("New  Unique -> 10000 Vector2");
            for (auto& pointer : uniquePtrs2)
                // ReSharper disable once CppSmartPointerVsMakeFunction
                pointer = std::unique_ptr<Vector2>(new Vector2());
        }
    }
}
