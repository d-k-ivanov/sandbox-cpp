#pragma once

#include "Entity.h"

class Player final : public Entity
{
private:
    std::string m_Name;
public:
    explicit Player(std::string name);
    [[nodiscard]] std::string GetName() const override;
};
