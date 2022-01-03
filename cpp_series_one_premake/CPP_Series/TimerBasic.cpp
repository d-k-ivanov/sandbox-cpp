#include "TimerBasic.h"

#include <iostream>

TimerBasic::TimerBasic(): duration()
{
    start = std::chrono::high_resolution_clock::now();
}

TimerBasic::~TimerBasic()
{
    end = std::chrono::high_resolution_clock::now();
    duration = end - start;

    const float ms = duration.count() * 1000.0f;
    std::cout << "\t----\n";
    std::cout << "\tDuration: " << ms << "ms" << std::endl;
}
