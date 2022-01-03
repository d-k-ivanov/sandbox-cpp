#pragma once

#include <chrono>
#include <string>

class Timer // NOLINT(cppcoreguidelines-special-member-functions)
{
private:
    std::chrono::time_point<std::chrono::high_resolution_clock> m_StartTimePoint;
    std::string m_TimerDescription;

public:
    explicit Timer(std::string timerName);
    ~Timer();
    void Stop() const;
};
