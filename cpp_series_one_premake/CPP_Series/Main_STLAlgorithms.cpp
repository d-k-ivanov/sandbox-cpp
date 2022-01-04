#include <algorithm>
#include <iostream>
#include <numeric>
#include <vector>

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

    void Main()
    {
        std::vector<int> v(40);
        std::iota(v.begin(), v.end(), 1);
        PrintRange(v);

        auto isEven = [](auto e) { return e % 2 == 0; };
        std::partition(v.begin(), v.end(), isEven);
        PrintRange(v);
        Quicksort(v.begin(), v.end());
        PrintRange(v);

    }
}
