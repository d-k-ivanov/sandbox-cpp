#include "Entity.h"

#include <iostream>


Entity::Entity(): m_X(0.0f), m_Y(0.0f)
{
}

Entity::Entity(const float x, const float y): m_X(x), m_Y(y)
{
}

Entity::~Entity() = default;

float Entity::GetX() const
{
    return m_X;
}

float Entity::GetY() const
{
    return m_X;
}


void Entity::SetX(const float x)
{
    m_X = x;
}

void Entity::SetY(const float y)
{
    m_Y = y;
}

void Entity::Print() const
{
    std::cout << "Entity coordinates (" << this->GetX() << "," << this->GetY() << ")" << std::endl;
}

void PrintEntity1(Entity& e)
{
    std::cout << "PrintEntity1" << std::endl;
    std::cout << &e << std::endl;
    std::cout << e.GetX() << std::endl;
};

void PrintEntity2(Entity e)
{
    std::cout << "PrintEntity2" << std::endl;
    e.SetX(77);
    std::cout << &e << std::endl;
    std::cout << e.GetX() << std::endl;
};

void PrintEntity3(Entity* e)
{
    std::cout << "PrintEntity3" << std::endl;
    std::cout << e << std::endl;
    std::cout << e->GetX() << std::endl;
};
