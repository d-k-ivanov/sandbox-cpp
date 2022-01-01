#include "Player.h"

Player::Player(std::string name): m_Name(std::move(name))
{
}

std::string Player::GetName()
{
    return m_Name;
}
