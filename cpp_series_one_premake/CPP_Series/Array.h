#pragma once

template <typename T, size_t S>
class Array
{
private:
    T m_Data[S];
public:
    [[nodiscard]] constexpr size_t Size() const;
    T& operator[](size_t index);
    const T& operator[](size_t index) const;
    T* Data();
    [[nodiscard]] const T* Data() const;
};

template <typename T, size_t S>
constexpr size_t Array<T, S>::Size() const
{
    return S;
}

template <typename T, size_t S>
T& Array<T, S>::operator[](size_t index)
{
    return m_Data[index];
}

template <typename T, size_t S>
const T& Array<T, S>::operator[](size_t index) const
{
    return m_Data[index];
}

template <typename T, size_t S>
T* Array<T, S>::Data()
{
    return m_Data;
}

template <typename T, size_t S>
const T* Array<T, S>::Data() const
{
    return m_Data;
}
