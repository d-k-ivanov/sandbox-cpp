#include "Array.h"

#include <iostream>

namespace MainArray
{
    void Main()
    {
        // int size = 5;
        Array<int, 5> data{};

        memset(data.Data(), 0, data.Size() * sizeof(int));

        for (int i = 0; i < data.Size(); i++)
        {
            std::cout << data[i] << "\n";
        }

        for (int i = 0; i < data.Size(); i++)
        {
            data[i] = 5;
            // std::cout << data[i] << "\n";
        }

        const auto& dataRef = data;
        for (int i = 0; i < data.Size(); i++)
        {
            // dataRef[i] = 5;
            std::cout << dataRef[i] << "\n";
        }
    }
}
