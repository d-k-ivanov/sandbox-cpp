/*
 * =====================================================================
 *      Project :  progress_bars
 *      File    :  main.cpp
 *      Created :  16.02.2020 2:09:55 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include "ProgressBar.h"
#include <thread>

#ifdef _WIN32
#include <windows.h>
#endif

int main(int argc, char* argv[])
{
    #ifdef _WIN32
    SetConsoleOutputCP(CP_UTF8);
    #endif


    ProgressBar bar;
    bar.set_bar_width(50);

    // Simple ASCII Graphic:
    // bar.fill_bar_progress_with("=");
    // bar.fill_bar_remainder_with(" ");

    // UTF-8
    bar.fill_bar_progress_with("█");
    bar.fill_bar_remainder_with("░");

    for (size_t i = 1; i <= 100; ++i) {
        bar.update(i);
        std::this_thread::sleep_for(std::chrono::milliseconds(50));
    }

    return 0;

}
