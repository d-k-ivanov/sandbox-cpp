#include "Main.h"
#include "Log.h"

#include <iostream>

#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    Log log;
    log.SetLevel(log.LogLevelWarning);
    log.Warn("Warning!");
    log.Error("Error!");
    log.Info("Info!");

    // std::system("pause");
    return 0;
}
