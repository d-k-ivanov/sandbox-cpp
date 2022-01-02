#include "EntityMock.h"

EntityMock::EntityMock(const char* name): m_Name(name)
{
    std::cout << this->m_Name << ": Created Mocked Entity!" << std::endl;
}

EntityMock::~EntityMock()
{
    std::cout << this->m_Name << ": Destructed Mocked Entity!" << std::endl;
}

void EntityMock::Print() const
{
    std::cout << this->m_Name << ": Print Mocked Entity Value!" << std::endl;

}
