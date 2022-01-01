#include "Entity.h"

#include <iostream>

void Entity::Move(const float xa, const float ya)
{
    X += xa;
    Y += ya;
}

void PrintName(Entity* entity)
{
    std::cout << entity->GetName() << std::endl;
}
