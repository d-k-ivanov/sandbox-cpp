#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "EntityMock.h"
#include "Person.h"
#include "Player.h"

#include "Vec2.h"
#include "Vec3.h"
#include "Vertex.h"
#include "MyString.h"

#include "ScopedPointer.h"

#include <algorithm>
#include <array>
#include <functional>
#include <iostream>
#include <memory>
#include <string>
#include <tuple>
#include <vector>

#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    std::vector<int> values = {3, 5, 1, 4, 2};

    std::sort(values.begin(), values.end());

    for (const int value : values)
        std::cout << value;
    std::cout << std::endl;

    std::sort(values.begin(), values.end(), std::greater<int>());

    for (const int value : values)
        std::cout << value;
    std::cout << std::endl;

    std::sort(values.begin(), values.end(), [](const int a, const int b) { return a < b; });

    for (const int value : values)
        std::cout << value;
    std::cout << std::endl;

    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
