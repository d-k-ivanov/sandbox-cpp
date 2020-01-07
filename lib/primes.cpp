/*
 * =====================================================================
 *      Project :  primes.cpp
 *      File    :  primes.cpp
 *      Created :  20.12.2019 23:55:30 +0100
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include "generators.h"
#include "logger.h"
#include "timer.h"
#include "types.h"

#include <iostream>
#include <vector>
#include <iomanip>
#include <functional>
#include <string>

Uint64 start_time = 0ULL;
Uint64 finish_time = 0ULL;

namespace euler
{
    // Euler's Totient Function - Simple
    Uint64 gcd(const Uint64 a, const Uint64 b)
    {
        if (a == 0ULL)
            return b;
        return gcd(b % a, a);
    }

    Uint64 phi_simple(const Uint64 n)
    {
        auto result = 1ULL;
        for (auto i = 2ULL; i < n; i++)
            if (gcd(i, n) == 1ULL)
                result++;
        return result;
    }

    // Euler's Totient Function - Euler’s Product Formula
    Uint64 phi_euler_product(Uint64 n)
    {
        auto result = n;
        for (auto i = 2ULL; i * i <= n; i++) {
            if (n % i == 0) {
                while (n % i == 0)
                    n /= i;
                result -= result / i;
            }
        }
        if (n > 1)
            result -= result / n;
        return result;
    }

    // Modular exponentiation - Memory-efficient method
    Uint64 modular_pow_me(const Uint64 base, const Uint64 exponent, const Uint64 modulus)
    {
        if (modulus == 1) return 0;
        Uint64 result = 1;
        for (Uint64 e = 0; e < exponent; e++)
            result = (result * base) % modulus;
        return result;

    }

    // Modular exponentiation - Right-to-left binary method
    Uint64 modular_pow_lrb(Uint64 base, Uint64 exponent, Uint64 modulus)
    {
        if (modulus == 1) return 0;
        Uint64 result = 1;
        base %= modulus;
        while(exponent > 0)
        {
            if (exponent % 2 == 1)
                result = (result * base) % modulus;
            exponent >>= 1;
            base = (base * base) % modulus;
        }
        return result;
     }

    // Simple iterative function for checking primality.
    bool is_prime_simple(const Uint64 n)
    {
        if (n < 2) return false;
        if (n == 2) return true;
        if (n % 2 == 0) return false;

        // is_prime: if n can't be divided by every number n <= sqrt(n), than it's prime
        // for (Uint64 i = 3; i <= static_cast<Uint64>(std::sqrtl(n)) + 1ULL; i++)
        // But if we're dealing with integers `i * i <= n` is better.
        for (Uint64 i = 3; i * i <= n; i++)
        {
            if (n % i == 0)
            {
                return false;
            }
        }
        return true;
    }

    // Miller–Rabin primality test
    // Probabilistic. Relies on the unproven extended Riemann hypothesis.
    // n - number to test, rounds - number of iterations to increase correctness.
    bool is_prime_mr(const Uint64 n)
    {
        // Trivial results:
        if (n < 2) return false;
        if (n == 2 || n == 3) return true;
        if (n % 2 == 0) return false;

        const unsigned rounds = 30;

        // Factorization of n-1 to get (2^s)·t
        auto s = 0ULL;
        auto t = n - 1ULL;
        while (t % 2 == 0)
        {
            s += 1;
            t /= 2;
        }

        // Main iterator:
        for (unsigned i = 0; i < rounds; i++)
        {
            // get a random integer a in the range [2, n−2]
            const auto a = get_rand_n<Uint64>(2ULL,n - 2ULL);

            // This is the weak point of the algorithm.
            // Modular exponentiation function should be very fast to get results for large numbers.
            auto x = modular_pow_lrb(a, t, n);
            if (x == 1 || x == n - 1) continue;

            bool cont = false;
            for (Uint64 j = 0; j < s; j++)
            {
                x = modular_pow_lrb(x, 2, n);
                if (x == n - 1) {
                    cont = true;
                    break;
                };
            }
            if (cont)
                continue;
            else
                return false;
        }

        return true;
    }

    // Agrawal–Kayal–Saxena primality test.
    // This algorithm is the first that can provably determine whether any
    // given number is prime or composite within polynomial time,
    // without relying on the generalized Riemann hypothesis.
    // Based on Fermat's little theorem.
    bool is_prime_aks(const Uint64 n)
    {


        return true;
    }

    std::vector<Uint64> get_prime_factors(Uint64 n)
    {
        std::vector<Uint64> prime_factors;

        LOG_D(euler::logger::log_level) << std::setw(17) << "init n = " << std::left << std::setw(16) << n << "\n";
        // for (int i = 2; n == 0; i++)
        Uint64 i = 2;
        while (true)
        {
            if (n % i == 0 && is_prime_simple(i))
            {
                LOG_D(euler::logger::log_level) << "i = " << std::right << std::setw(8) << i << " n = " << std::left << std::setw(14) << n << "\n";
                prime_factors.push_back(i);
                n = n / i;
            }
            if (n == 1)
                break;
            i++;
        }
        LOG_D(euler::logger::log_level) << std::right << std::setw(17) << "final n = " << std::left << std::setw(16) << n << "\n";

        // Explicit due strict increment. But can be useful in random algorithms.
        // std::sort(prime_factors.begin(), prime_factors.end());
        return prime_factors;
    }

    void show_primes(const Uint64 size, const std::function<bool(const Uint64)> is_prime_function)
    {
        const auto old_log_level = euler::logger::log_level;
        logger::log_level = logger::VERBOSE;
        LOG_V(euler::logger::log_level) << "Prime numbers from 1 to " << size << ":\n";
        auto count = 1ULL;
        for (auto i = 2ULL; i <= size; i++)
        {
            if (is_prime_function(i))
            {
                count++;
                LOG_V(euler::logger::log_level) << std::setw(7) << i;
                if (count % 14 == 0) { LOG_V(euler::logger::log_level) << "\n"; }
            }
        }
        LOG_V(euler::logger::log_level) << "\n";
        logger::log_level = old_log_level;
    }

    void show_phi(const Uint64 size, const std::function<Uint64(const Uint64)> phi_function)
    {
        LOG_V(euler::logger::log_level) << "Phi of numbers from 1 to " << size << ":\n";
        for (auto i = 1ULL; i <= size; i++)
        {
            // std::string s = std::to_string(i) + ":" + std::to_string(phi_function(i));
            // LOG_V(euler::logger::log_level) << std::left << std::setw(7) << s << '\t';
            LOG_V(euler::logger::log_level) << std::setw(7) << phi_function(i);
            if (i % 14 == 0) { LOG_V(euler::logger::log_level) << "\n"; }
        }
        LOG_V(euler::logger::log_level) << "\n";
    }

    void benchmark()
    {
        // const Uint64 number = 13195;
        const Uint64 number = 901240913456;
        // const Uint64 number = ULLONG_MAX;

        LOG_V(logger::log_level) << "IsPrime Iterative" << '\n';
        show_primes(1000, is_prime_simple);
        LOG_V(logger::log_level) << std::string(50, '-') << '\n';
        LOG_V(logger::log_level) << "IsPrime Miller-Rabin" << '\n';
        show_primes(1000, is_prime_mr);
        LOG_V(logger::log_level) << std::string(50, '-') << '\n';
        show_phi(1000, phi_euler_product);
        LOG_V(logger::log_level) << std::string(50, '-') << '\n';

        if(logger::log_level == logger::DEBUG)
        {
            // start_time = GetTimestamp();
            // finish_time = GetTimestamp();
            // if (is_prime_mr(223))
            //     LOG_D(logger::log_level) << "prime" << '\n';
            // else
            //     LOG_D(logger::log_level) << "composite" << '\n';

            LOG_D(logger::log_level) << "Phi algorithms timings:" << '\n';
            Timer timer;
            LOG_D(logger::log_level) << "     phi_simple:        " << phi_simple(1000000) << "\n";
            LOG_D(logger::log_level) << "     phi_simple:        " << timer.elapsed_time() << " microseconds\n";

            timer.reset();
            LOG_D(logger::log_level) << "     phi_euler_product: " << phi_euler_product(1000000) << "\n";
            LOG_D(logger::log_level) << "     phi_euler_product: " << timer.elapsed_time() << " microseconds\n\n";

            LOG_D(logger::log_level) << "Modular exponentiation algorithms timings:" << '\n';
            timer.reset();
            LOG_D(logger::log_level) << "     modular_pow_me:    " << modular_pow_me(4, 13, 497) << "\n";
            LOG_D(logger::log_level) << "     modular_pow_me:    " << timer.elapsed_time() << " microseconds\n";
            timer.reset();
            LOG_D(logger::log_level) << "     modular_pow_lrb:   " << modular_pow_lrb(4, 13, 497) << "\n";
            LOG_D(logger::log_level) << "     modular_pow_lrb:   " << timer.elapsed_time() << " microseconds\n";

            const Uint64 test_value_primes = ULLONG_MAX;
            LOG_D(logger::log_level) << "Is_Prime algorithms timings on number: " << test_value_primes << "\n";
            timer.reset();
            LOG_D(logger::log_level) << "     is_prime_simple:   " << is_prime_simple(test_value_primes) << "\n";
            LOG_D(logger::log_level) << "     is_prime_simple:   " << timer.elapsed_time() << " microseconds\n";
            timer.reset();
            LOG_D(logger::log_level) << "     is_prime_mr:       " << is_prime_mr(test_value_primes) << "\n";
            LOG_D(logger::log_level) << "     is_prime_mr:       " << timer.elapsed_time() << " microseconds\n\n";
        }

        LOG_V(euler::logger::log_level) << "Square root of " << number << ": " << std::sqrt(number) << "\n";
        LOG_V(logger::log_level) << std::string(50, '-') << '\n';

        LOG_V(euler::logger::log_level) << "Prime factors of " << number << ":\n";
        std::vector<Uint64> prime_factors = get_prime_factors(number);
        for (auto factor: prime_factors)
            LOG_V(euler::logger::log_level) << std::setw(7) << factor << " ";
        LOG_V(euler::logger::log_level) << "\n";

    }
}
