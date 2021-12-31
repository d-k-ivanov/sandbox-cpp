#include "Main.h"
#include "Log.h"
#include "Entity.h"
#include "Singleton.h"


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

    Singleton s = Singleton::GetInstance();
    Singleton r = Singleton::GetInstance();
    s.Hello();
    r.Hello();

    // std::system("pause");
    return 0;
}
