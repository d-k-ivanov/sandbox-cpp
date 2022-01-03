#pragma once

// Only one instance possible
class Singleton
{
private:
    static Singleton* s_Instance;
    Singleton();
    Singleton(const Singleton&) = delete;
public:
    static Singleton& GetInstance();
    void Hello() const;
};
