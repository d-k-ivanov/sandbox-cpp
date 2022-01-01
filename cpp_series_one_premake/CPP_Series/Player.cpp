#include "Player.h"

#include <iostream>

Player::Player(std::string name): m_Name(std::move(name))
{
}

std::string Player::GetName() const
{
    GetNameCallCounter++;
    return m_Name;
}

void Player::PrintGetNameCounter() const
{
    std::cout << "Method GetName called " << this->GetNameCallCounter << " times." << std::endl;
}
