#include "Player.h"

Player::Player(const std::string& name): m_Name(name)
{
}

std::string Player::GetName()
{
    return  m_Name;
}
