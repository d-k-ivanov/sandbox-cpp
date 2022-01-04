# Main.cpp Archive


## Base

```cpp
int main()
{
    int a = 5;
    int b = 8;
    a++;
    b++;
    const char* str = "Hello World!";
    const char* ptr = nullptr;

    if(str)
        Log(str);

    if (ptr)
        Log(str);
    else
        if (ptr)
            Log(str);
    else
        Log("nullptr");


    for (int i = 0; i < strlen(str); ++i)
    {
        const char c = str[i];
        std::cout << c << std::endl;

    }

    const int res = Multiply(a, b);
    std::cout << res << std::endl;
    // std::cin.get();

    // std::system("pause");
    return 0;
}
```

## Simale Logger

```cpp
#include "Log.h"

int main()
{
    auto log = Log(2);
    log.Warn("Warning!");
    log.Error("Error!");
    log.Info("Info!");
    log.SetLevel(log.LogLevelWarning);
    log.Warn("Warning!");
    log.Error("Error!");
    log.Info("Info!");

    // std::system("pause");
    return 0;
}
```

## Classes

```cpp
#include "Entity.h"

int main()
{
    Entity e1, e2, e3;
    e1.SetX(11); e2.SetX(22); e3.SetX(33);

    PrintEntity1(e1);
    log.Info("------------------------------");

    PrintEntity1(e2);
    PrintEntity2(e2);
    PrintEntity1(e2);
    log.Info("------------------------------");

    PrintEntity3(&e3);

    return 0;
}
```

## Singleton

```cpp
#include "Singleton.h"

int main()
{
    Singleton s = Singleton::GetInstance();
    Singleton r = Singleton::GetInstance();
    s.Hello();
    r.Hello();
    return 0;
}
```

## Logger with Enum

```cpp
#include "Log.h"

int main()
{
    Log log;
    log.SetLevel(Log::LogLevelInfo);

    log.Warn("Warning!");
    log.Error("Error!");
    log.Info("Info!");

    log.SetLevel(Log::LogLevelWarning);
    log.Warn("Warning!");
    log.Error("Error!");
    log.Info("Info!");

    return 0;
}
```

## Entiry with Constructors

```cpp
#include "Entity.h"
#include <iostream>

int main()
{
    {
        const Entity e(10.0f, 50.0f);
        std::cout << e.GetX() << std::endl;
        std::cout << e.GetY() << std::endl;
        e.Print();
        e.~Entity(); // Direct Desctructor Call is possible, but wrong
    }
    return 0;
}
```

## Inheritance

```cpp
#include "Entity.h"
#include "Person.h"
#include "Player.h"

#include <iostream>

int main()
{
    std::cout << sizeof(Entity) << std::endl;
    std::cout << sizeof(Player) << std::endl;
    std::cout << sizeof(Person) << std::endl;
    Player player {};
    player.Name = "Player";
    player.Move(5, 5);
    player.X = 2;
    return 0;
}
```

## Virtual, Interface and mutable

```cpp
#include "Entity.h"
#include "Player.h"

int main()
{
    const Player player { "Player 1" }; //const auto player = new Player("Player");
    PrintName(&player);
    PrintName(&player);
    PrintName(&player);
    PrintName(&player);

    player.PrintGetNameCounter();
    Player::PrintNumberOfEntities();
    const Player player2{ "Player 2" };
    const Player player3{ "Player 3" };
    const Player player4{ "Player 4" };
    Player::PrintNumberOfEntities();

    return 0;
}
```

## Operators

```cpp
#include "Vec2.h"

#include <iostream>

int main()
{
    const Vec2 position(4.0f, 4.0f);
    std::cout << "Position: " << position << std::endl;
    const Vec2 speed(0.5f, 1.5f);
    std::cout << "Speed: " << speed << std::endl;
    const Vec2 powerUp(11.1f, 11.1f);
    std::cout << "PowerUp: " << powerUp << std::endl;
    const Vec2 result = position + speed * powerUp;
    if (position != result) {
        std::cout << "Position + Speed * PowerUp = " << result << std::endl;
    }

    return 0;
}
```

## Scoped Ponter

```cpp
#include "EntityMock.h"
#include "ScopedPointer.h"

#include <iostream>
#include <memory>

int main()
{
    {
        ScopedPointer<EntityMock> e1 = new EntityMock("e1");
        e1.GetObject()->Print();
        e1->Print();
        [[maybe_unused]] auto e2 = new EntityMock("e2");
    }

    {
        std::unique_ptr<EntityMock> e3(new EntityMock("e3"));
        e3->Print();
        std::unique_ptr<EntityMock> e4 = std::make_unique<EntityMock>("e4");
        e4->Print();
    }

    {
        std::shared_ptr<EntityMock> e5;
        {
            std::shared_ptr<EntityMock> e6(new EntityMock("e6"));
            e6->Print();

            std::shared_ptr<EntityMock> e7 = std::make_shared<EntityMock>("e7");
            e7->Print();

            e5 = e7;
            e5->Print();
        }
    }

    {
        std::weak_ptr<EntityMock> e8;
        {
            std::shared_ptr<EntityMock> e9 = std::make_shared<EntityMock>("e9");
            std::weak_ptr<EntityMock> weakEntity = e9;
            weakEntity.lock()->Print();
            e9->Print();
            e8 = e9;
            e8.lock()->Print();
        }
        if (e8.expired())
            std::cout << "e8: Expired. Skipping...";
        else
            e8.lock()->Print();
    }
    std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
```

## My String

```cpp
#include "MyString.h"

int main()
{
    const MyString string = "Test String";
    const MyString second = string;
    string[0] = 't';
    string[5] = 's';
    second[1] = 'E';
    second[2] = 'S';
    second[3] = 'T';

    PrintMyString(string);
    PrintMyString(second);

    return 0;
}
```

##  Offset Example

```cpp
include "Vec3.h"
#include <iostream>

int main()
{
#pragma warning(push)
#pragma warning(disable : 4311)
#pragma warning(disable : 4302)
    int offset = (long)&((Vec3*)nullptr)->x;
    std::cout << offset << std::endl;

    const int offset2 = (long)&((Vec3*)0)->x;
    std::cout << offset2 << std::endl;

    // this is the same and more simple to understand:
    Vec3* v3 = new Vec3();
    offset = ((long)&(v3->x)) - (long)v3;
    std::cout << offset << std::endl;

    offset = (long)&((Vec3*)nullptr)->y;
    std::cout << offset << std::endl;

    offset = (long)&((Vec3*)nullptr)->z;
    std::cout << offset << std::endl;
#pragma warning(pop)

    return 0;
}
```


##  Vector Optimizations

```cpp
#include "Vertex.h"

#include <iostream>
#include <vector>

int main()
{
    {
        std::vector<Vertex> vertices;

        vertices.push_back({1, 2, 3});
        vertices.push_back({4, 5, 6});

        for (int i = 0; i < vertices.size(); i++)
            std::cout << vertices[i] << std::endl;

        for (const Vertex v : vertices)
            std::cout << v << std::endl;

        vertices.erase(vertices.begin() + 1);

        for (const Vertex& v : vertices)
            std::cout << v << std::endl;

        vertices.clear();
    }
    {
        std::cout << "-------- Non Optimized -------" << std::endl;
        std::vector<Vertex> vertices;
        vertices.push_back(Vertex(1, 2, 3));
        vertices.push_back(Vertex(4, 5, 6));
        vertices.push_back(Vertex(7, 8, 9));

        std::cout << "---------- Optimized ---------" << std::endl;
        std::vector<Vertex> vertices2;
        vertices2.reserve(3);
        vertices2.emplace_back(1, 2, 3);
        vertices2.emplace_back(4, 5, 6);
        vertices2.emplace_back(7, 8, 9);
    }

    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
```

## Multiple Return Values

```cpp
#include <array>
#include <iostream>
#include <string>
#include <tuple>
#include <vector>

void Function1(std::string* outVar1, std::string* outVar2)
{
    if (outVar1)
        *outVar1 = "Ptr_One";
    if (outVar2)
        *outVar2 = "Ptr_Two";
}

std::string* Function2()
{
    return (new std::string[2]{"Str_One", "Str_Two"});
}

std::array<std::string, 2> Function3()
{
    std::array<std::string, 2> results;
    results[0] = "Ar_One";
    results[1] = "Ar_Two";

    return results;
}

std::vector<std::string> Function4()
{
    std::vector<std::string> results;
    results.push_back("Vev_One");
    results.push_back("Vec_Two");

    return results;
}


std::pair<std::string, float> Function5()
{
    return std::make_pair("Pair", 2.2f);
}

std::tuple<std::string, float> Function6()
{
    return std::make_pair("Tuple", 1.1f);
}

struct ReturnValues
{
    std::string One;
    std::string Two;
};

ReturnValues Function7()
{
    return {"One", "Two"};
}

int main()
{
    std::string outVar1, outVar2;
    Function1(&outVar1, &outVar2);
    Function1(nullptr, nullptr);
    std::cout << outVar1 << ", " << outVar2 << std::endl;
    std::cout << "------------------------------" << std::endl;

    const std::string* sources2 = Function2();
    std::cout << sources2[0] << ", " << sources2[1] << std::endl;

    const std::array<std::string, 2> sources3 = Function3();
    std::cout << sources3[0] << ", " << sources3[1] << std::endl;

    const std::vector<std::string> sources4 = Function4();
    std::cout << sources4[0] << ", " << sources4[1] << std::endl;
    std::cout << "------------------------------" << std::endl;

    const std::pair<std::string, float> sources5 = Function5();
    // auto sources5 = Function5();
    std::cout << std::get<0>(sources5) << ", " << std::get<1>(sources5) << std::endl;
    std::cout << sources5.first << ", " << sources5.second << std::endl;

    const std::tuple<std::string, float> sources6 = Function6();
    // auto sources6 = Function6();
    std::cout << std::get<0>(sources6) << ", " << std::get<1>(sources6) << std::endl;
    std::cout << "------------------------------" << std::endl;

    const ReturnValues sources7 = Function7();
    std::cout << sources7.One << ", " << sources7.Two << std::endl;

    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
```

## Multi-Dimentional Arrays

```cpp
int main()
{
    // 1D array
    int* array = new int[50];

    // 2D array
    int** a2d = new int*[50];

    for (int i = 0; i < 50; i++)
        a2d[i] = new int[50];

    for (int i = 0; i < 50; i++)
        delete[] a2d[i];
    delete[] a2d;

    // 3D array
    int*** a3d = new int**[50];
    for (int i = 0; i < 50; i++)
    {
        a3d[i] = new int*[50];
        for (int j = 0; j < 50; j++)
        {
            // int** ptr = a3d[i];
            a3d[i][j] = new int[50];
        }
    }

    for (int i = 0; i < 50; i++)
    {
        for (int j = 0; j < 50; j++)
            delete[] a3d[i][j];
        delete[] a3d[i];
    }
    delete[] a3d;
}
```

## Sorting

```cpp
#include <algorithm>
#include <functional>
#include <vector>

int main()
{
    std::vector<int> values = {3, 5, 1, 4, 2};

    std::sort(values.begin(), values.end());
    for (const int value : values)
        std::cout << value << std::endl;
    std::cout << std::endl;

    std::sort(values.begin(), values.end(), std::greater<int>());
    for (const int value : values)
        std::cout << value << std::endl;
    std::cout << std::endl;

    std::sort(values.begin(), values.end(), [](const int a, const int b) { return a < b; });
    for (const int value : values)
        std::cout << value << std::endl;
    std::cout << std::endl;

    return 0;
}
```

## Casts

```cpp
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

    return 0;
}
```


## Bitwise

```cpp
int main()
{
    const int a = 5;
    printf("%i\n", a);
    printf("%i\n", a << 1);
    printf("%i\n", a >> 1);
    printf("%i\n", a << 4);
    return 0;
}
```
