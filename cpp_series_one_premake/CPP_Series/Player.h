#pragma once

#include "Entity.h"

class Player final : public Entity
{
private:
    std::string m_Name;
public:
    Player(std::string name);
    std::string GetName() override;
};
