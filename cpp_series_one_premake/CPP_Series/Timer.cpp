#include "Timer.h"

#include <chrono>
#include <iostream>
#include <string>

Timer::Timer(std::string timerDescription):m_TimerDescription(std::move(timerDescription))
{
    m_StartTimePoint = std::chrono::high_resolution_clock::now();
}

void Timer::Stop() const
{
    const auto endTimePoint =
        std::chrono::high_resolution_clock::now();

    const auto start =
        std::chrono::time_point_cast<std::chrono::microseconds>(
            m_StartTimePoint).time_since_epoch().count();

    const auto end =
        std::chrono::time_point_cast<std::chrono::microseconds>(
            endTimePoint).time_since_epoch().count();

    const auto duration = end - start;

    const double ms = duration * 0.001; // NOLINT(*)

    std::cout << m_TimerDescription << " " << duration << "us (" << ms << "ms)\n";
}

Timer::~Timer()
{
    Stop();
}
