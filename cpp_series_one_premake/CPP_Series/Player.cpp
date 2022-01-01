#include "Player.h"

Player::Player(std::string name): m_Name(std::move(name))
{
}

std::string Player::GetName() const
{
    return m_Name;
}
