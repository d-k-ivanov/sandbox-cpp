#pragma once
#include <iostream>

class EntityMock
{
private:
    int m_X = 0;
    const char* m_Name;
public:
    EntityMock(const char* name);
    ~EntityMock();

    void Print() const;
};
