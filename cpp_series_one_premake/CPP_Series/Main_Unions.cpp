#include <iostream>

namespace MainUnions
{
    struct Vector2
    {
        float x, y;
    };

    struct Vector4
    {
        union
        {
            #pragma warning(push)
            #pragma warning(disable : 4201) // structs without names
            struct  // NOLINT(clang-diagnostic-nested-anon-types)
            {
                float x, y, z, w;
            };

            struct // NOLINT(clang-diagnostic-nested-anon-types)
            {
                Vector2 a, b;
            };
            #pragma warning(pop)
        };
    };

    struct Vector4Alternative
    {
        float x, y, z, w;

        Vector2& GetA()
        {
            return *reinterpret_cast<Vector2*>(&x);
        }
    };

    void PrintVector2(const Vector2& vector)
    {
        std::cout << vector.x << ", " << vector.y << std::endl;
    }

    void Main()
    {
        struct UnionContainer
        {
            union
            {
                float a;
                int b;
            };
        };

        UnionContainer u{};
        u.a = 2.0f;
        std::cout << u.a << ", " << u.b << std::endl;

        std::cout << "---------------------\n";

        Vector4 vector = { 1.0f, 2.0f, 3.0f, 4.0f };
        PrintVector2(vector.a);
        PrintVector2(vector.b);
        vector.z = 500.0f;

        std::cout << "---------------------\n";

        PrintVector2(vector.a);
        PrintVector2(vector.b);
    }
}
