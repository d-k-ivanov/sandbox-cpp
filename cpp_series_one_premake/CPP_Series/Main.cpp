#include "Main.h"
#include "Log.h"
#include "Entity.h"


#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    Log log;
    log.SetLevel(log.LogLevelInfo);

    // log.Warn("Warning!");
    // log.Error("Error!");
    // log.Info("Info!");

    Entity e1, e2, e3;
    e1.SetX(11); e2.SetX(22); e3.SetX(33);

    PrintEntity1(e1);
    log.Info( "------------------------------");

    PrintEntity1(e2);
    PrintEntity2(e2);
    PrintEntity1(e2);
    log.Info("------------------------------");

    PrintEntity3(&e3);

    // std::system("pause");
    return 0;
}
