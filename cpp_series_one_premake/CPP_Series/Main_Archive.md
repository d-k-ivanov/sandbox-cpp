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
