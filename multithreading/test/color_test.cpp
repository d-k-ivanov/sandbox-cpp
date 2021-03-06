/*
 * =====================================================================
 *      Project :  multithreading
 *      File    :  color_test.cpp
 *      Created :  05/04/2020 17:03:54 +0300
 *      Author  :  Dmitry Ivanov
 * =====================================================================
 */

#include <iostream>

#ifdef _WIN32
#include <windows.h>
#endif

int main(int argc, char* argv[], char* env[])
{
    // To turn off messages about unused variables.
    ((void)argc);
    ((void)argv);
    ((void)env);

    #ifdef _WIN32
    SetConsoleOutputCP(CP_UTF8);

    const HANDLE stdOut = GetStdHandle(STD_OUTPUT_HANDLE);
    // Maximum number is 8190
    //const WORD MAX_COLOR = 8190;
    const WORD maxColor = 255;
    for (WORD k = 1; k < maxColor; k++)
    {
        SetConsoleTextAttribute(stdOut, k);
        std::cout << "Color:\t" << k << std::endl;
    }
    SetConsoleTextAttribute(stdOut, 15);
    #endif

    return 0;

}
