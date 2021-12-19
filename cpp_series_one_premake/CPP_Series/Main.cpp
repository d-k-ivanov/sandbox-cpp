#include "Main.h"
#include "Log.h"

#include <iostream>

#ifdef _WIN32
#include <Windows.h>
#endif

int main(int argc, char* argv[], char* env[])
{
    Log("Hello World!");
    std::cin.get();

    // std::system("pause");
    return 0;
}
