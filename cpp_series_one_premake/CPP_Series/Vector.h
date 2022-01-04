#pragma once
#include <iostream>

template<typename Vector>
class VectorIterator
{

public:
    using ValueType = typename Vector::ValueType;
    using PointerType = ValueType*;
    using ReferenceType = ValueType&;

public:
    VectorIterator(const PointerType ptr):m_Ptr(ptr)
    {
    }

    VectorIterator& operator++()
    {
        m_Ptr++;
        return *this;
    }

    VectorIterator operator++(int)
    {
        VectorIterator iterator = *this;
        ++(* this);
        return iterator;
    }

    VectorIterator& operator--()
    {
        m_Ptr--;
        return *this;
    }

    VectorIterator operator--(int)
    {
        VectorIterator iterator = *this;
        --(*this);
        return iterator;
    }

    ReferenceType operator[](int index)
    {
        return *(m_Ptr + index);
    }

    PointerType operator->()
    {
        return m_Ptr;
    }

    ReferenceType operator*()
    {
        return *m_Ptr;
    }

    bool operator==(const VectorIterator& other) const
    {
        return m_Ptr == other.m_Ptr;
    }

    bool operator!=(const VectorIterator& other) const
    {
        return !(*this == other);
    }

private:
    PointerType m_Ptr;
};

template <typename T>
class Vector
{
public:
    using ValueType = T;
    using Iterator = VectorIterator<Vector<T>>;

public:
    Vector();
    ~Vector();

    void PushBack(const T& value);
    void PushBack(T&& value);

    template <typename... Args>
    T& EmplaceBack(Args&&... args);

    void PopBack();
    void Clear();

    T& operator[](size_t index);
    const T& operator[](size_t index) const;

    [[nodiscard]] size_t Size() const;

    Iterator begin();
    Iterator end();

private:
    T* m_Buffer = nullptr;
    size_t m_Size = 0;
    size_t m_TotalCapacity = 0;

private:
    void ReAlloc(size_t elements);
};

template <typename T>
Vector<T>::Vector()
{
    ReAlloc(2);
}

template <typename T>
Vector<T>::~Vector()
{
    Clear();
    // delete[] m_Buffer;
    ::operator delete(m_Buffer, m_TotalCapacity * sizeof(T));
}

template <typename T>
void Vector<T>::PushBack(const T& value)
{
    if (m_Size >= m_TotalCapacity)
        ReAlloc(m_TotalCapacity + m_TotalCapacity / 2);

    m_Buffer[m_Size] = value;
    m_Size++;
}

template <typename T>
void Vector<T>::PushBack(T&& value)
{
    if (m_Size >= m_TotalCapacity)
        ReAlloc(m_TotalCapacity + m_TotalCapacity / 2);

    m_Buffer[m_Size] = std::move(value);
    m_Size++;
}

template <typename T>
template <typename ... Args>
T& Vector<T>::EmplaceBack(Args&&... args)
{
    if (m_Size >= m_TotalCapacity)
        ReAlloc(m_TotalCapacity + m_TotalCapacity / 2);

    // m_Buffer[m_Size] = T(std::forward<Args>(args)...);
    // Inplace Constructing
    new(&m_Buffer[m_Size]) T(std::forward<Args>(args)...);
    return m_Buffer[m_Size++];
}

template <typename T>
void Vector<T>::PopBack()
{
    if (m_Size > 0)
    {
        m_Size--;
        m_Buffer[m_Size].~T();
    }
}

template <typename T>
void Vector<T>::Clear()
{
    for (size_t i = 0; i < m_Size; i++)
        m_Buffer[i].~T();
    m_Size = 0;
}

template <typename T>
T& Vector<T>::operator[](size_t index)
{
    if (index >= m_Size)
    {
        // assert();
    }
    return m_Buffer[index];
}

template <typename T>
const T& Vector<T>::operator[](size_t index) const
{
    if (index >= m_Size)
    {
        // assert();
    }
    return m_Buffer[index];
}


template <typename T>
size_t Vector<T>::Size() const
{
    return m_Size;
}

template <typename T>
typename Vector<T>::Iterator Vector<T>::begin()
{
    return Iterator(m_Buffer);
}

template <typename T>
typename Vector<T>::Iterator Vector<T>::end()
{
    return Iterator(m_Buffer + m_Size);
}

template <typename T>
void Vector<T>::ReAlloc(const size_t elements)
{
    // T* block = new T[elements];
    T* block = static_cast<T*>(::operator new(elements * sizeof(T)));

    if (elements < m_Size)
        m_Size = elements;

    for (size_t i = 0; i < m_Size; i++)
        // block[i] = std::move(m_Buffer[i]);
        new (&block[i]) T(std::move(m_Buffer[i]));

    for (size_t i = 0; i < m_Size; i++)
        m_Buffer[i].~T();

    // delete[] m_Buffer;
    ::operator delete(m_Buffer, m_TotalCapacity * sizeof(T));
    m_Buffer = block;
    m_TotalCapacity = elements;

#ifdef DEBUG
    std::cout << "\tAllocating " << elements << " elements. Vector Size: " << m_Size << std::endl;
#endif
}

template <typename T>
void PrintVector(const Vector<T>& vector)
{
    std::cout << "------------------------------------------" << std::endl;
    for (size_t i = 0; i < vector.Size(); i++)
        std::cout << vector[i] << std::endl;

    std::cout << "------------------------------------------" << std::endl;
}

namespace MainVector
{
    struct Vector3
    {
        float x = 0.0f, y = 0.0f, z = 0.0f;
        int* m_MemBlock;
        Vector3();
        Vector3(const float scalar);
        Vector3(const float x, const float y, const float z);
        Vector3(const Vector3&) = delete;
        Vector3(Vector3&&) noexcept;
        ~Vector3();

        Vector3& operator=(const Vector3&) = delete;
        Vector3& operator=(Vector3&& other) noexcept;
    };
}


template <>
void PrintVector(const Vector<MainVector::Vector3>& vector)
{
    std::cout << "------------------------------------------" << std::endl;
    for (size_t i = 0; i < vector.Size(); i++)
        std::cout << "Vector3(" << vector[i].x << ", " << vector[i].y << ", " << vector[i].z << ")" << std::endl;

    std::cout << "------------------------------------------" << std::endl;
}
