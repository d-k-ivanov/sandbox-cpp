#pragma once

#include "Entity.h"

class Player final : public Entity
{
private:
    std::string m_Name;
public:
    explicit Player(const std::string& name);
    std::string GetName() override;
};
