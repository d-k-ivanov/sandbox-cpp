# Entity.h 01

```cpp
#ifndef ENTITY_H
#define ENTITY_H


class Entity  // NOLINT(cppcoreguidelines-special-member-functions)
{
private:
    float m_X;
    float m_Y;

public:
    Entity();
    Entity(float x, float y);

    ~Entity();

    [[nodiscard]] float GetX() const;
    [[nodiscard]] float GetY() const;
    void SetX(float x);
    void SetY(float y);
    void Print() const;
};

void PrintEntity1(Entity& e);
void PrintEntity2(Entity e);
void PrintEntity3(Entity* e);

#endif // ENTITY_H
```
