#pragma once

#include "Entity.h"

class Player : public Entity
{
public:
    const char* Name;

    void PrintName() const;
};
