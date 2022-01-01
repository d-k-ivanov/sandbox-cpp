#pragma once

#include <string>

class Entity // NOLINT(cppcoreguidelines-special-member-functions)
{
protected:
    ~Entity() = default;
public:
    float X{}, Y{};

    void Move(float xa, float ya);
    virtual std::string GetName() const = 0;
};

void PrintName(Entity* entity);
