#pragma once

template <typename T>
class ScopedPointer // NOLINT(cppcoreguidelines-special-member-functions)
{
private:
    T* m_Ptr;
public:
    ScopedPointer(T* ptr);
    ~ScopedPointer();

    T* GetObject();
    T* operator->();
    const T* operator->() const;
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

template <typename T>
T* ScopedPointer<T>::GetObject()
{
    return m_Ptr;
}

template <typename T>
T* ScopedPointer<T>::operator->()
{
    return m_Ptr;
}

template <typename T>
const T* ScopedPointer<T>::operator->() const
{
    return m_Ptr;
}
