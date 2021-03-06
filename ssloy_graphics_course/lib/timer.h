#ifndef TIMER_H
#define TIMER_H
/*
 * =====================================================================
 *      Project :  SSLoyGraphicsCourse
 *      File    :  timer.h
 *      Created :  03.02.2020 18:44:16 +0300
 *      Author  :  Dmitry Ivanov
 * =====================================================================
 */

#include <chrono>

#ifdef _WIN32
#include <Windows.h>
#else
#include <sys/time.h>
#include <ctime>
#endif

namespace ssloy
{
    class Timer
    {
    public:
        Timer() : start_(Clock::now()) {}
        void reset() { start_ = Clock::now(); }
        [[nodiscard]] long long elapsed_time() const {
            return std::chrono::duration_cast<std::chrono::microseconds>
                (Clock::now() - start_).count();
            // return std::chrono::duration_cast<Second(Clock::now() - start_).count();
        }

    private:
        typedef std::chrono::high_resolution_clock Clock;
        // typedef std::chrono::duration<double, std::ratio<1> > Second;
        std::chrono::time_point<Clock> start_;
    };

    /* Returns the amount of milliseconds elapsed since the UNIX epoch. */
    inline unsigned long long GetTimestamp()
    {
    #ifdef _WIN32
        FILETIME ft;
        LARGE_INTEGER li;

        /* Get the amount of 100 nano seconds intervals elapsed since January 1, 1601 (UTC)
         * and copy it to a LARGE_INTEGER structure. */
        GetSystemTimeAsFileTime(&ft);
        li.LowPart = ft.dwLowDateTime;
        li.HighPart = ft.dwHighDateTime;

        unsigned long long ret = li.QuadPart;

        /* Convert from file time to UNIX epoch time. */
        ret -= 116444736000000000LL;

        /* From 100 nano seconds (10^-7) to 1 millisecond (10^-3) intervals */
        // ret /= 10000;
        /* From 100 nano seconds (10^-7) to 1 microsecond (10^-6) intervals */
        ret /= 10;

        return ret;
    #else
        struct timeval tv;

        gettimeofday(&tv, NULL);

        unsigned long long ret = tv.tv_usec;

        /* Convert from micro seconds (10^-6) to milliseconds (10^-3) */
        // ret /= 1000;

        /* Adds the seconds (10^0) after converting them to milliseconds (10^-3) */
        ret += (tv.tv_sec * 1000);

        return ret;
    #endif
    }
}
#endif //TIMER_H

