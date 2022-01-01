#pragma once

#include <string>

class Entity // NOLINT(cppcoreguidelines-special-member-functions)
{
protected:
    inline static unsigned int s_NumberOfEntities = 0;
    Entity();
    ~Entity() = default;
public:
    float X{}, Y{};

    void Move(float xa, float ya);
    [[nodiscard]] virtual std::string GetName() const = 0;
    static void PrintNumberOfEntities();
};

void PrintName(const Entity* entity);
