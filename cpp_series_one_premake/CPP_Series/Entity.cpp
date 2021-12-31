#include "Entity.h"

#include <iostream>


int Entity::GetX() const
{
    return m_X;
}

void Entity::SetX(const int x)
{
    m_X = x;
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
