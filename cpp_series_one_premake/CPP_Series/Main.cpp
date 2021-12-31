#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "Singleton.h"

#include <iostream>


#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    Log log;
    log.SetLevel(Log::LogLevelInfo);

    // log.Warn("Warning!");
    // log.Error("Error!");
    // log.Info("Info!");

    {
        const Entity e(10.0f, 50.0f);
        std::cout << e.GetX() << std::endl;
        std::cout << e.GetY() << std::endl;
        e.Print();
        e.~Entity(); // Direct Desctructor Call is possible, but wrong
    }

    // std::system("pause");
    return 0;
}
