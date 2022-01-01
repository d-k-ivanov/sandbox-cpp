#pragma once

template <typename T>
class ScopedPointer  // NOLINT(cppcoreguidelines-special-member-functions)
{
private:
    T* m_Ptr;
public:
    ScopedPointer(T* ptr);
    ~ScopedPointer();
};

template <typename T>
ScopedPointer<T>::ScopedPointer(T* ptr) : m_Ptr(ptr)
{
}

template <typename T>
ScopedPointer<T>::~ScopedPointer()
{
    delete m_Ptr;
}
