/*
 * =====================================================================
 *      Project :  multithreading
 *      File    :  main.cpp
 *      Created :  04/04/2020 18:39:02 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include <iostream>
#include <string>
#include <vector>
#include <thread>

#ifdef _WIN32
#include <windows.h>
#endif

int main(int argc, char* argv[], char* env[])
{
    // To turn off messages about unused variables.
    ((void)argc);
    ((void)argv);
    ((void)env );

    #ifdef _WIN32
    SetConsoleOutputCP(CP_UTF8);
    #endif

    #ifdef _WIN32
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), FOREGROUND_GREEN | FOREGROUND_BLUE);
    #elif
    std::cout << termcolor::bold << termcolor::yellow;
    #endif

    std::cout << "Multi-threading info:" << std::endl;
    std::cout << "Maximum parallel tasks: " << std::thread::hardware_concurrency() << std::endl;

    #ifdef _WIN32
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_BLUE);
    #elif
    std::cout << termcolor::reset;
    #endif

    return 0;
}
