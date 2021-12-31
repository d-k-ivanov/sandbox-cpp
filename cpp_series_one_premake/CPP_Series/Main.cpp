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
    log.SetLevel(Log::LogLevelInfo);

    log.Warn("Warning!");
    log.Error("Error!");
    log.Info("Info!");

    log.SetLevel(Log::LogLevelWarning);
    log.Warn("Warning!");
    log.Error("Error!");
    log.Info("Info!");

    // std::system("pause");
    return 0;
}
