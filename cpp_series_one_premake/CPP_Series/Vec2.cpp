#include "Vec2.h"

#include <iostream>


Vec2::Vec2(const float x, const float y): x(x), y(y)
{
}

Vec2 Vec2::Add(const Vec2& other) const
{
    return Vec2(x + other.x, y + other.y);  // NOLINT(modernize-return-braced-init-list)
}

Vec2 Vec2::Multiply(const Vec2& other) const
{
    return Vec2(x * other.x, y * other.y); // NOLINT(modernize-return-braced-init-list)
}

Vec2 Vec2::operator+(const Vec2& other) const
{
    return Add(other);
}

Vec2 Vec2::operator*(const Vec2& other) const
{
    return Multiply(other);
}

bool Vec2::operator==(const Vec2& other) const
{
    return x == other.x && y == other.y;  // NOLINT(clang-diagnostic-float-equal)
}

bool Vec2::operator!=(const Vec2& other) const
{
    return !(*this == other); // return !operator==(other);
}

std::ostream& operator<<(std::ostream& stream, const Vec2& other)
{
    stream << other.x << ", " << other.y;
    return stream;
}
