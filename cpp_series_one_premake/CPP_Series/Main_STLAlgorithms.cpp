// ReSharper disable CppUseRangeAlgorithm
#include <algorithm>
#include <iostream>
#include <numeric>
#include <vector>
#include <random>

#include "Timer.h"

namespace MainStlAlgorithms
{
    template <typename T>
    void PrintRange(T t)
    {
        for (const auto& e : t)
            std::cout << e << " ";
        std::cout << std::endl;
    }

    template <class ForwardIt>
    void Quicksort(ForwardIt first, ForwardIt last)
    {
        if (first == last)
            return;

        auto pivot = *std::next(first, std::distance(first, last) / 2);
        auto greater1 = [pivot](const auto& e) { return e < pivot; };
        auto greater2 = [pivot](const auto& e) { return !(pivot < e); };

        ForwardIt middle1 = std::partition(first, last, greater1);
        ForwardIt middle2 = std::partition(middle1, last, greater2);

        Quicksort(first, middle1);
        Quicksort(middle2, last);
    }

    template <typename T>
    void Remove(std::vector<T>& v, const T& item)
    {
        v.erase(std::remove(v.begin(), v.end(), item), v.end());
    }

    void MainPartition()
    {
        std::vector<int> v(40);
        std::iota(v.begin(), v.end(), 1);
        PrintRange(v);

        std::cout << "\npartition: " << std::endl;
        auto isEven = [](auto e) { return e % 2 == 0; };
        std::partition(v.begin(), v.end(), isEven);
        PrintRange(v);
        Quicksort(v.begin(), v.end());
        PrintRange(v);

        std::cout << "\nstable_partition: " << std::endl;
        std::stable_partition(v.begin(), v.end(), isEven);
        PrintRange(v);
        Quicksort(v.begin(), v.end());
        PrintRange(v);


        std::random_device randDevice;
        std::mt19937 generator(randDevice());
        const std::uniform_int_distribution<> distribution(1, 10);

        std::vector<int> v2(40);
        for (auto& value : v2)
            value = distribution(generator);

        PrintRange(v2);
        Remove(v2, 5);
        PrintRange(v2);
    }

#pragma optimize( "", off )
    void MainGen()
    {
        // https://quick-bench.com/
        const int N = 10000;
        // static void use_iota(benchmark::State& state)
        {
            // for (auto _ : state)
            {
                Timer timer("use_iota");
                std::vector<int> v(N);
                std::iota(begin(v), end(v), 1);
                // benchmark::DoNotOptimize(v);
            }
        }

        // BENCHMARK(use_iota);

        // static void use_gen(benchmark::State& state)
        {
            // Code inside this loop is measured repeatedly
            // for (auto _ : state)
            {
                Timer timer("use_gen");
                std::vector<int> v(N);
                generate(begin(v), end(v), [i = 0]() mutable
                {
                    ++i;
                    return i;
                });
                // benchmark::DoNotOptimize(v);
            }
        }
        // Register the function as a benchmark
        // BENCHMARK(use_gen);

        // static void use_gen_n(benchmark::State& state)
        {
            // Code inside this loop is measured repeatedly
            // for (auto _ : state)
            {
                Timer timer("use_gen_n");
                std::vector<int> v;
                generate_n(back_inserter(v), N, [i = 0]() mutable
                {
                    ++i;
                    return i;
                });
                // benchmark::DoNotOptimize(v);
            }
        }
        // Register the function as a benchmark
        // BENCHMARK(use_gen_n);

        // static void use_gen_n_with_reserve(benchmark::State& state)
        {
            // Code inside this loop is measured repeatedly
            // for (auto _ : state)
            {
                Timer timer("use_gen_n_with_reserve");
                std::vector<int> v;
                v.reserve(N);
                generate_n(back_inserter(v), N, [i = 0]() mutable
                {
                    ++i;
                    return i;
                });
                // benchmark::DoNotOptimize(v);
            }
        }
        // Register the function as a benchmark
        // BENCHMARK(use_gen_n_with_reserve);

        // static void use_gen_n_with_reserve_with_resize(benchmark::State& state)
        {
            // Code inside this loop is measured repeatedly
            // for (auto _ : state)
            {
                Timer timer("use_gen_n_with_reserve_with_resize");
                std::vector<int> v;
                v.reserve(N);
                v.resize(N);
                generate_n(begin(v), N, [i = 0]() mutable
                {
                    ++i;
                    return i;
                });
                // benchmark::DoNotOptimize(v);
            }
        }

        // Register the function as a benchmark
        // BENCHMARK(use_gen_n_with_reserve_with_resize);
    }
#pragma optimize( "", on )

    void Main()
    {
        // MainPartition();
        MainGen();
    }
}
