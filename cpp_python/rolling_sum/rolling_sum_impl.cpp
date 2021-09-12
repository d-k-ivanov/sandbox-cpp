#include <algorithm>
#include <vector>

std::vector<int> rolling_sum(const std::vector<int> &a)
{
    std::vector<int> b(a.size());
    b[0] = a[0];
    for (int i = 1; i < a.size(); i++)
        b[i] = b[i - 1] + a[i];
    return b;
}
