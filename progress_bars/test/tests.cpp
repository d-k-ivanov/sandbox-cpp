/*
 * =====================================================================
 *      Project :  progress_bars - Tests
 *      File    :  main.cpp
 *      Created :  16.02.2020 2:09:55 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */


#include <iostream>

#ifdef _WIN32
#include <windows.h>

BOOL WINAPI ConsoleHandler(DWORD ctrl_type) {
    if (ctrl_type == CTRL_C_EVENT || ctrl_type == CTRL_BREAK_EVENT) {
        ExitProcess(0);
    }
    return FALSE;
}
#endif

int main(int argc, char* argv[], char* env[])
{

    // To turn off messages about unused variables.
    ((void)argv);
    ((void)argc);
    ((void)env);

    #ifdef _WIN32
    HANDLE console_handle;
    COORD dwSize;
    COORD dwPosition;
    DWORD written;
    DWORD flag = 0;
    CONSOLE_CURSOR_INFO cursor_info;

    console_handle =
        CreateConsoleScreenBuffer(GENERIC_READ | GENERIC_WRITE,
            0, NULL,
            CONSOLE_TEXTMODE_BUFFER,
            NULL);
    SetConsoleActiveScreenBuffer(console_handle);
    SetConsoleCtrlHandler(ConsoleHandler, TRUE);
    dwSize.X = 80;
    dwSize.Y = 24;
    SetConsoleScreenBufferSize(console_handle, dwSize);
    cursor_info.dwSize = 1;
    cursor_info.bVisible = FALSE;
    SetConsoleCursorInfo(console_handle, &cursor_info);
    SetConsoleTextAttribute(console_handle,
        FOREGROUND_RED | FOREGROUND_INTENSITY);
    //dwPosition.X = 35;
    //dwPosition.Y = 12;
    dwPosition.X = 1;
    dwPosition.Y = 1;
    while (TRUE) {
        SetConsoleCursorPosition(console_handle, dwPosition);
        if (flag ^= 1)
            WriteFile(console_handle, "Hello World",
                11, &written, NULL);
        else
            WriteFile(console_handle, "           ",
                11, &written, NULL);
        Sleep(500);
    }
    #endif
}
