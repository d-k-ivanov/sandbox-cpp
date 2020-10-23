#include <string>
#include <type_traits>

template <typename... Ts>
std::string stringify(Ts&&... args)
{
    auto convert = [](auto&& arg) {
        using TT = std::remove_reference_t<decltype(arg)>;
        if constexpr(std::is_same_v<TT, std::string>) {
            return arg;
        } else if constexpr(std::is_array_v< TT >) {
            return std::string{arg};
        } else {
            return std::to_string(arg);
        }
    };

    std::string ret{};
    auto concat = [](std::string& dst, auto&& arg) {
        dst += arg;
    };

    (..., concat(ret, convert(args)));

    return ret;
}

int main()
{
    std::string hello{"hello "};
    auto s = stringify("A ", hello, 2, " ", "C++ Insights");
    printf("%s\n", s.c_str());
}
