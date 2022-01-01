#pragma once
#include <iostream>

struct Vec2
{
    float x, y;

    Vec2(float x, float y);

    [[nodiscard]] Vec2 Add(const Vec2& other) const;
    [[nodiscard]] Vec2 Multiply(const Vec2& other) const;

    Vec2 operator+(const Vec2& other) const;
    Vec2 operator*(const Vec2& other) const;
    bool operator==(const Vec2& other) const;
    bool operator!=(const Vec2& other) const;
};

std::ostream& operator<<(std::ostream& stream, const Vec2& other);
