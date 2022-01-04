// ReSharper disable CppUseRangeAlgorithm
#include <algorithm>
#include <iostream>
#include <numeric>
#include <vector>
#include <random>

#include "Timer.h"
#include "BenchmarkTools.h"


namespace MainStlAlgorithms
{
    template <typename T>
    void PrintRange(T t)
    {
        for (const auto& e : t)
            std::cout << e << " ";
        std::cout << std::endl;
    }

    template <class I, class T>
    auto Count(I f, I l, const T& val)
    {
        return std::reduce(f, l, 0, [val](auto a, auto b) { return a + (b == val); });
    }

    template <class I, class P>
    auto AnyOf(I f, I l, P p)
    {
        return std::reduce(f, l, false, [p](auto a, auto b) { return a || p(b); });
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

    void MainGen()
    {
        // https://quick-bench.com/
        const int N = 1000000;
        {
            Timer timer("use_iota");
            std::vector<int> v(N);
            std::iota(begin(v), end(v), 1);
            BenchmarkTools::SuppressOptimization(v);
        }

        {
            Timer timer("use_gen");
            std::vector<int> v(N);
            generate(begin(v), end(v), [i = 0]() mutable
            {
                ++i;
                return i;
            });
            BenchmarkTools::SuppressOptimization(v);
        }

        {
            Timer timer("use_gen_n");
            std::vector<int> v;
            generate_n(back_inserter(v), N, [i = 0]() mutable
            {
                ++i;
                return i;
            });
            BenchmarkTools::SuppressOptimization(v);
        }

        {
            Timer timer("use_gen_n_with_reserve");
            std::vector<int> v;
            v.reserve(N);
            generate_n(back_inserter(v), N, [i = 0]() mutable
            {
                ++i;
                return i;
            });
            BenchmarkTools::SuppressOptimization(v);
        }

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
            BenchmarkTools::SuppressOptimization(v);
        }
    }


    void MainReduceAccum()
    {
        constexpr int vectorSize = 10;
        {
            Timer timer("accumulate");
            // std::vector v = {1, 2, 3, 4, 1, 2, 3, 4};
            std::vector<int> v(vectorSize);
            std::iota(begin(v), end(v), 2);
            const auto x = accumulate(begin(v), end(v), 0);
            const auto y = accumulate(begin(v), end(v), 0, std::plus<>());
            const auto z = accumulate(begin(v), end(v), 1, std::multiplies<>());
            std::cout << "accumulate x: " << x << std::endl;
            std::cout << "accumulate y: " << y << std::endl;
            std::cout << "accumulate z: " << z << std::endl;
            BenchmarkTools::SuppressOptimization(v);
        }

        {
            Timer timer("reduce");
            // std::vector v = {1, 2, 3, 4, 1, 2, 3, 4};
            std::vector<int> v(vectorSize);
            std::iota(begin(v), end(v), 2);
            const auto x = reduce(begin(v), end(v));
            const auto y = reduce(begin(v), end(v), 0, std::plus<>());
            const auto z = reduce(begin(v), end(v), 1, std::multiplies<>());
            std::cout << "reduce x: " << x << std::endl;
            std::cout << "reduce y: " << y << std::endl;
            std::cout << "reduce z: " << z << std::endl;
            BenchmarkTools::SuppressOptimization(v);
        }

        constexpr int vectorSize2 = 1000000;
        {
            Timer timer("count");
            // std::vector v = {1, 2, 3, 4, 1, 2, 3, 4};
            std::vector<int> v(vectorSize2);
            std::iota(begin(v), end(v), 2);
            const auto x = Count(begin(v), end(v), 999999);
            const auto y = std::count(begin(v), end(v), 999999);
            std::cout << "MyCount: " << x << std::endl;
            std::cout << "std::count: " << y << std::endl;
            BenchmarkTools::SuppressOptimization(v);
        }

        {
            Timer timer("any of");
            // std::vector v = {1, 2, 3, 1, 2, 3, 1, 2, 3};
            std::vector<int> v(vectorSize2);
            std::iota(begin(v), end(v), 2);
            auto labmda = [](auto e) { return e == 999999; };
            const auto x = AnyOf(begin(v), end(v), labmda);
            const auto y = std::any_of(begin(v), end(v), labmda);
            std::cout << "AnyOf: " << x << std::endl;
            std::cout << "std::any_of: " << y << std::endl;
            BenchmarkTools::SuppressOptimization(v);
        }
    }

    void Main()
    {
        MainPartition();
        std::cout << "\n------------------------------------------\n\n";
        MainGen();
        std::cout << "\n------------------------------------------\n\n";
        MainReduceAccum();
    }
}
