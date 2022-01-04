#include <iostream>
#include <unordered_map>
#include <vector>

#define P(x) std::cout << x << std::endl

namespace MainIterators
{
    void Main()
    {
        {
            std::vector<int> vector{1, 2, 3, 4, 5};
            for (const int value : vector)
                P(value);
            std::cout << "------------------------------------------\n";

            for (size_t i = 0; i < vector.size(); i++)
                P(vector[i]);
            std::cout << "------------------------------------------\n";

            for (std::vector<int>::iterator it = vector.begin(); it != vector.end(); ++it)
                P(*it);
            std::cout << "------------------------------------------\n";
        }
        {
            using VectorMap = std::unordered_map<char, float>;
            using VectorMapIt = VectorMap::iterator;

            VectorMap map;
            map['x'] = 0.9882f;
            map['y'] = 0.0012f;
            map['z'] = 0.5508f;

            for (VectorMapIt it = map.begin(); it != map.end(); ++it)
                P(it->first << ": " << it->second);
            std::cout << "------------------------------------------\n";

            for (auto [key, value] : map)
                P(key << ": " << value);
            std::cout << "------------------------------------------\n";
        }
    }
}
