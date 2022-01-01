#pragma once

#include "Entity.h"

class Player final : public Entity
{
private:
    std::string m_Name;
public:
    mutable int GetNameCallCounter = 0;
    explicit Player(std::string name);
    [[nodiscard]] std::string GetName() const override;
    void PrintGetNameCounter() const;
};
