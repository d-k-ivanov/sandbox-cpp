#include <cstdint>
#include <iostream>

namespace MainBytes
{
    template <class Dst, class Src>
    Dst bitCast(const Src& source)
    {
        static_assert(sizeof(Dst) == sizeof(Src),
            "Types have different data sizes. The byte cast is possible only for the types of the same size");
        Dst dest{};
        memcpy(&dest, &source, sizeof(dest));
        return dest;
    }

    void Main()
    {
        // ReSharper disable once CppVariableCanBeMadeConstexpr
        const uint32_t value1 = 1065353216;
        // float result = *reinterpret_cast<const float*>(&value1); // Aliasing Violation
        const auto result1 = bitCast<float>(value1);
        std::cout << result1 << std::endl;

        // ReSharper disable once CppVariableCanBeMadeConstexpr
        const float value2 = 1.0f;
        const auto result2 = bitCast<uint32_t>(value2);
        std::cout << result2 << std::endl;

        // // ReSharper disable once CppVariableCanBeMadeConstexpr
        // const double value3 = 1.0;
        // const auto result3 = bitCast<uint32_t>(value3);
        // std::cout << result3 << std::endl;
    }
}
