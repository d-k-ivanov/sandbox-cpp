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
    struct Entity
    {
        int x, y;

        int* GetPositions()
        {
            return &x;
        }
    };

    Entity e = {5, 8};

    int x0 = e.x;
    int y0 = e.y;

    const int* position = (int*)&e;
    std::cout << position[0] << ", " << position[1] << std::endl;

    const int x = *(int*)((char*)&e);
    const int y = *(int*)((char*)&e + 4);
    std::cout << x << ", " << y << std::endl;

    int* positions = e.GetPositions();
    positions[0] = 2;
    positions[1] = 3;
    std::cout << e.x << ", " << e.y << std::endl;

    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
