#include "MyString.h"

#include <iostream>
#include <stdio.h>

MyString::MyString(const char* string) : m_Size(strlen(string))
{
    m_Buffer = new char[m_Size + 1];
    memcpy(m_Buffer, string, m_Size);
    m_Buffer[m_Size] = 0;
}

MyString::MyString(const MyString& other): m_Size(other.m_Size)
{
    m_Buffer = new char[m_Size + 1]; // allocate a new buffer
    memcpy(m_Buffer, other.m_Buffer, m_Size + 1); // copy the content of the buffer
    std::cout << "Copied String!" << std::endl;
}

MyString::~MyString()
{
    delete[] m_Buffer;
}

char& MyString::operator[](const unsigned index) const
{
    return m_Buffer[index];
}

std::ostream& operator<<(std::ostream& stream, const MyString& string)
{
    stream << string.m_Buffer;
    return stream;
}

void PrintMyString(const MyString& str)
{
    std::cout << str << std::endl;
};
