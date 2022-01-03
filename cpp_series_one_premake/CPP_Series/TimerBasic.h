#pragma once
#include <chrono>

struct TimerBasic  // NOLINT(cppcoreguidelines-special-member-functions)
{
    std::chrono::time_point<std::chrono::steady_clock> start, end;
    std::chrono::duration<float> duration;

    TimerBasic();
    ~TimerBasic();
};
