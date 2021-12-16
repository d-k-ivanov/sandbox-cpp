/*
 * =====================================================================
 *      Project :  cherno-cpp-series
 *      File    :  main.cpp
 *      Created :  15.12.2021
 *      Author  :  Dmitry Ivanov
 * =====================================================================
 */

#include "main.h"

#include <functional>
#include <iostream>

#ifdef _WIN32
#include <Windows.h>
#endif

// Libraries
#include <fmt/core.h>
#include <spdlog/spdlog.h>

void Log(const char* message)
{
    std::cout << message << std::endl;
}

int main(int argc, char* argv[], char* env[])
{
    // To turn off messages about unused variables.
    ((void)argc );
    ((void)argv );
    ((void)env );

    #ifdef _WIN32
    SetConsoleOutputCP(CP_UTF8);
    #endif

    // std::cout << "Hello World!" << std::endl;
    Log("Hello World!");
    std::cin.get();

    // std::system("pause");
    return 0;
}
