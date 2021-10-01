#include <algorithm>
#include <iostream>>
#include <vector>

int main(int argc, char const *argv[])
{
    std::vector<std::string> v(200, "Text");

    std::for_each(v.begin(), v.end(), [&](std::string& elem)
    {
        std::cout << elem << " ";
    });

    return 0;
}
