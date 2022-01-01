#include "Entity.h"

#include <iostream>

Entity::Entity()
{
    s_NumberOfEntities++;
}

void Entity::Move(const float xa, const float ya)
{
    X += xa;
    Y += ya;
}

void Entity::PrintNumberOfEntities()
{
    std::cout << "Number of Entities in game: " << s_NumberOfEntities << std::endl;

}

void PrintName(const Entity* entity)
{
    std::cout << entity->GetName() << std::endl;
}
