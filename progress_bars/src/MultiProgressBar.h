#ifndef MULTYPROGRESSBAR_H
#define MULTYPROGRESSBAR_H
/*
 * =====================================================================
 *      Project :  progress_bars
 *      File    :  MultiProgressBar.h
 *      Created :  11/03/2020 15:16:54 +0300
 *      Author  :  Dmitry Ivanov
 * =====================================================================
 */

#include <atomic>
#include <mutex>
#include <functional>
#include <array>
#include <iostream>

#ifdef _WIN32
#include <windows.h>
#endif

template <typename Indicator, size_t count>
class MultiProgressBar
{
public:
    template <typename... Indicators, typename = typename std::enable_if_t<(sizeof...(Indicators) == count)>>
    explicit MultiProgressBar(Indicators&... bars) : bars_({ bars... }) {}

    template <size_t Index>
    typename std::enable_if_t<(Index >= 0 && Index < count), void> update(float value, std::ostream& os = std::cout)
    {
        bars_[Index].get().set_progress(value);
        write_progress(os);
    }

    void write_progress(std::ostream& os = std::cout)
    {
        std::unique_lock lock{ mutex_ };

        // Move cursor up if needed
        if (started_)
        {
            for (size_t i = 0; i < count; ++i)
            {
                #ifdef _WIN32
                auto const std_out = GetStdHandle(STD_OUTPUT_HANDLE);
                CONSOLE_SCREEN_BUFFER_INFO screen_buffer_info;
                GetConsoleScreenBufferInfo(std_out, &screen_buffer_info);
                const COORD cursor_position = {
                    screen_buffer_info.dwCursorPosition.X,
                    screen_buffer_info.dwCursorPosition.Y - static_cast<SHORT>(i) };
                SetConsoleCursorPosition(std_out, cursor_position);
                #elif
                os << "\x1b[A";
                #endif

            }
        }

        // Write each bar
        for (auto& bar : bars_)
        {
            bar.get().write_progress();
            os << "\n";
        }

        if (!started_)
            started_ = true;
    }


private:
    std::array<std::reference_wrapper<Indicator>, count> bars_;
    std::mutex mutex_;
    std::atomic<bool> started_{ false };
};


#endif //MULTYPROGRESSBAR_H

