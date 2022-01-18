#include <cstdint>
#include <iostream>

namespace MainBytes
{
    // template <class Dst, class Src>
    // Dst bitCast(const Src& source)
    // {
    //     static_assert(sizeof(Dst) == sizeof(Src),
    //         "Types have different data sizes. The byte cast is possible only for the types of the same size");
    //     Dst dest{};
    //     memcpy(&dest, &source, sizeof(dest));
    //     return dest;
    // }

    template <class Target, class Source>
    static constexpr Target bitCast(const Source& source)
    {
        static_assert(sizeof(Target) == sizeof(Source),
            "bitCast requires source and destination to be the same size");
        static_assert(std::is_trivially_copyable<Target>::value,
            "bitCast requires the destination type to be copyable");
        static_assert(std::is_trivially_copyable<Source>::value,
            "bitCast requires the source type to be copyable");

        union BitCaster
        {
            explicit BitCaster(const Source& source) : src(source)
            {
            }

            volatile Source src;
            volatile Target dest;
        };

        return BitCaster(source).dest;
    }

    void Main()
    {
        // std::bit_cast<float>(10);
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
