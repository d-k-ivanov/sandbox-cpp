#ifndef ENTITY_H
#define ENTITY_H


class Entity
{
private:
    int m_X = 0;

public:
    [[nodiscard]] int GetX() const;
    void SetX(int x);
};

void PrintEntity1(Entity& e);
void PrintEntity2(Entity e);
void PrintEntity3(Entity* e);

#endif // ENTITY_H
