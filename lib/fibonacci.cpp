/*
 * =====================================================================
 *      Project :  fibinacci.cpp
 *      File    :  fibinacci.cpp
 *      Created :  20.12.2019 1:45:54 +0100
 *      Author  :  Dmitry Ivanov
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
    unsigned int fibonacciR(const unsigned int n)
    {
        if (n == 0) { return 0; }
        if (n == 1) { return 1; }
        return fibonacciR(n - 1) + fibonacciR(n - 2);
    }

    void fibonacciR_print(const int size)
    {
        LOG(euler::logger::log_level) << "All Fibonacci Numbers:\n";
        for (int i = 0; i < size; i++)
        {
            LOG(euler::logger::log_level) << std::setw(11) << fibonacciR(i) << " ";
            if (i % 8 == 0) { LOG(euler::logger::log_level) << "\n"; }
        }
        LOG(euler::logger::log_level) << "\n";
    }

    void fibonacciS(const int size)
    {
        LOG(euler::logger::log_level) << "All Fibonacci Numbers:\n";
        unsigned long long a = 0;
        unsigned long long b = 1;

        int count = 1;
        while (true)
        {
            if (count >= size) { break; }

            if (a == 0 && b == 1)
            {
                LOG(euler::logger::log_level) << a << '\n' << b << '\n';
                count += 2;
            }

            const unsigned long long current = a + b;

            LOG(euler::logger::log_level) << current << '\n';

            a = b;
            b = current;
            count++;
        }
    }

    void fibonacciS2()
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
        fibonacciS(100);
        // fibonacciS2();
        // fibonacciR_print(30)
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
 */
