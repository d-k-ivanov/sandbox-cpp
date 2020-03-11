/*
 * =====================================================================
 *      Project :  progress_bars
 *      File    :  main.cpp
 *      Created :  16.02.2020 2:09:55 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include "ProgressBar.h"
#include "MultiProgressBar.h"

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

    ProgressBar bar;
    bar.set_bar_width(50);

    // Simple ASCII Graphic:
    // bar.fill_bar_progress_with("=");
    // bar.fill_bar_remainder_with(" ");

    // UTF-8
    bar.fill_bar_progress_with("█");
    bar.fill_bar_remainder_with("░");

    std::cout << "Single progress bar:" << std::endl;

    for (size_t i = 1; i <= 100; ++i) {
        bar.update(i);
        std::this_thread::sleep_for(std::chrono::milliseconds(50));
    }
    std::cout << std::endl;

    ProgressBar bar1, bar2, bar3;
    // std::vector<ProgressBar*> ll({ &bar1, &bar2, &bar3 });
    // UTF-8
    for (auto i : std::vector<ProgressBar*> ({ &bar1, &bar2, &bar3 }))
    {
        i->set_bar_width(50);
        i->fill_bar_progress_with("█");
        i->fill_bar_remainder_with("░");

    }
    MultiProgressBar<ProgressBar, 3> bars(bar1, bar2, bar3);

    // Job for the first bar
    auto job1 = [&bars]() {
        for (size_t i = 0; i <= 100; ++i) {
            bars.update<0>(i);
            std::this_thread::sleep_for(std::chrono::milliseconds(100));
        }
    };

    // Job for the second bar
    auto job2 = [&bars]() {
        for (size_t i = 0; i <= 100; ++i) {
            bars.update<1>(i);
            std::this_thread::sleep_for(std::chrono::milliseconds(200));
        }
    };

    // Job for the third bar
    auto job3 = [&bars]() {
        for (size_t i = 0; i <= 100; ++i) {
            bars.update<2>(i);
            std::this_thread::sleep_for(std::chrono::milliseconds(60));
        }
    };

    std::cout << "Multiple progress bars:" << std::endl;
    std::thread first_job(job1);
    std::thread second_job(job2);
    std::thread third_job(job3);

    first_job.join();
    second_job.join();
    third_job.join();
    std::cout << std::endl;

    return 0;

}
