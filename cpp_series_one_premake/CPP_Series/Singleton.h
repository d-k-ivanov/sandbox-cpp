#pragma once

// Only one instance possible
class Singleton
{
private:
    // static Singleton* s_Instance;
    Singleton();
    void HelloImpl() const;
public:
    Singleton(const Singleton&) = delete;
    static Singleton& GetInstance();
    static void Hello();
};
