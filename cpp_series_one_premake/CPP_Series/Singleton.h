#pragma once

// Only one instance possible
class Singleton
{
private:
    static Singleton* s_Instance;
    Singleton() = default;
public:
    static Singleton& GetInstance();
    void Hello() const;
};
