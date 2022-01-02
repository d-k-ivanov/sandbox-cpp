#pragma once
#include <ostream>

class MyString
{
private:
    char* m_Buffer;
    size_t m_Size;
public:
    MyString(const char* string);
    MyString(const MyString& other);
    ~MyString();

    char& operator[](unsigned index) const;
    friend std::ostream& operator<<(std::ostream& stream, const MyString& string);
};

void PrintMyString(const MyString& str);
