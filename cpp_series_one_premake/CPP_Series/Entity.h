#pragma once

#include <string>

class Entity // NOLINT(cppcoreguidelines-special-member-functions)
{
protected:
    ~Entity() = default;
public:
    float X{}, Y{};

    void Move(float xa, float ya);
    virtual std::string GetName() = 0;
};

void PrintName(Entity* entity);
