/*
 * =====================================================================
 *      Project :  project-euler
 *      File    :  2.cpp
 *      Created :  20.12.2019 1:45:54 +0100
 *      Author  :  Dmitriy Ivanov
 *
 * =====================================================================
 */

#include "formats.h"
#include "logger.h"
#include <iostream>
#include <iomanip>
#include <vector>

#ifdef _WIN32
#include <windows.h>
#endif

namespace euler
{
    void fibonacci()
    {
        std::vector<int> evens;
        LOG(euler::logger::log_level) << "All Fibonacci Numbers:\n";
        unsigned int a = 0;
        unsigned int b = 1;

        int count = 1;
        while(true)
        {
            if (a == 0 && b == 1)
            {
                LOG(euler::logger::log_level) << std::setw(11) << a << " " << std::setw(11) << b << " ";
                count += 2;
            }

            const unsigned int current = a + b;
            if (current >= INT_MAX)
            {
                break;
            }
            LOG(euler::logger::log_level) << std::setw(11) << current << " ";
            if (count % 8 == 0) { LOG(euler::logger::log_level) << "\n"; }

            if (current % 2 == 0) { evens.push_back(current); }

            a = b;
            b = current;
            count++;
        }
        LOG(euler::logger::log_level) << "\n";
        LOG(euler::logger::log_level) << "\n";

        LOG(euler::logger::log_level) << "Even Fibonacci Numbers:\n";
        for(int num: evens)
        {
            LOG(euler::logger::log_level) << std::setw(11) << num << " ";
        }
        LOG(euler::logger::log_level) << "\n";
    }

    int main(int argc, char* argv[])
    {
        #ifdef _WIN32
        SetConsoleOutputCP(CP_UTF8);
        #endif

        int exitCode = 0;
        euler::log_level = euler::VERBOSE;

        LOG(euler::logger::log_level) << "Maximum Signed Int:\t" << INT_MAX << std::endl;
        LOG(euler::logger::log_level) << "Maximum Unsigned Int:\t" << UINT_MAX << std::endl;

        set_separator_thousands('\'');
        int result = fibonacci();
        reset_separator();

        std::system("pause");
        return exitCode;
    }

}

/*
 *      All Fibonacci Numbers:
 *            0         1         1         2         3         5         8        13
 *           21        34        55        89       144       233       377       610
 *          987      1597      2584      4181      6765     10946     17711     28657
 *        46368     75025    121393    196418    317811    514229    832040   1346269
 *      2178309   3524578
 *
 *      Even Fibonacci Numbers:
 *            2         8        34       144       610      2584     10946     46368    196418    832040   3524578
 */
