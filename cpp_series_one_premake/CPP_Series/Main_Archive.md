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
