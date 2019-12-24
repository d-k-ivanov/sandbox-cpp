/*
 * =====================================================================
 *      Project :  primes.cpp
 *      File    :  primes.cpp
 *      Created :  20.12.2019 23:55:30 +0100
 *      Author  :  Dmitriy Ivanov
 *
 * =====================================================================
 */

#include "logger.h"

#include <iostream>
#include <vector>
#include <algorithm>
#include <iomanip>

namespace euler
{

    bool is_prime_slow(const unsigned long long n)
     {
        if (n < 2) return false;
        if (n == 2) return true;
        if (n % 2 == 0) return false;

        for (unsigned long long i = 3; i < n/2; i++)
        {
            if (n % i == 0)
            {
                return false;
            }
        }
        return true;
    }

    std::vector<unsigned long long> get_prime_factors(unsigned long long n)
    {
        std::vector<unsigned long long> prime_factors;

        LOG(euler::logger::log_level) << "DEBUG: init n=" << n << "\n";
        // for (int i = 2; n == 0; i++)
        unsigned long long i = 2;
        while (true)
        {
            if (n % i == 0 && is_prime_slow(i))
            {
                LOG(euler::logger::log_level) << "DEBUG: i=" << std::setw(7) << i << " n = " << std::setw(14) << n << "\n";
                prime_factors.push_back(i);
                n = n / i;
            }
            if (n == 1)
                break;
            i++;
        }
        LOG(euler::logger::log_level) << "DEBUG: final n=" << n << "\n";

        std::sort(prime_factors.begin(), prime_factors.end());
        return prime_factors;
    }
}
