#include <iostream>
#include <algorithm>
#include <vector>
#include "quick_sort.hpp"

std::vector<int> qsort(std::vector<int> &a)
{
    sort(a.begin(), a.end());
    return a;
}

// int main()
// {
//     using namespace std;
//     std::vector<int> a = {86, 35, 65, 3, 90, 78, 63, 87, 49, 62, 94, 84, 56,
//                           32, 69, 41, 99, 47, 95, 28, 15, 7, 99, 47, 3, 62,
//                           10, 66, 35, 49, 83, 85, 76, 82, 79, 66, 44, 42, 16,
//                           17, 1, 62, 74, 9, 11, 42, 74, 50, 72, 25, 4, 81,
//                           10, 16, 98, 33, 64, 24, 6, 90, 16, 72, 93, 61, 86};
//     auto b = qsort(a);
//     for (auto x : b)
//     {
//         cout << x << ' ';
//     }
//     cout << endl;
//     return 0;
// }
