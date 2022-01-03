#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstring>

namespace MainMoveSemantics
{
    class String
    {
    private:
        char* m_Data;
        uint64_t m_Size;
    public:
        String() = default;

        String(const char* str):
            m_Size(strlen(str))
        {
            printf("String Created!\n");
            m_Data = new char[m_Size];
            memcpy(m_Data, str, m_Size);
        }

        String(const String& other):
            m_Size(other.m_Size)
        {
            printf("String Copied!\n");
            m_Data = new char[m_Size];
            memcpy(m_Data, other.m_Data, m_Size);
        }

        String(String&& other) noexcept:
            m_Data(other.m_Data), m_Size(other.m_Size)
        {
            printf("String Moved!\n");
            other.m_Data = nullptr;
            other.m_Size = 0;
        }

        String& operator=(String&& other) noexcept
        {
            if (this == &other)
                return *this;

            printf("String Assigned!\n");

            delete[] m_Data;

            m_Data = other.m_Data;
            m_Size = other.m_Size;
            other.m_Data = nullptr;
            other.m_Size = 0;
        }

        ~String()
        {
            printf("String Destroyed!\n");
            delete m_Data;
        }

        void Print() const
        {
            for (uint64_t i = 0; i < m_Size; i++)
                printf("%c", m_Data[i]);
            printf("\n");
        }
    };

    class Entity
    {
    private:
        String m_Name;
    public:
        Entity(const String& name): m_Name(name)
        {
        }

        // Entity(String&& name) : m_Name((String&&)name)
        Entity(String&& name) : m_Name(std::move(name))
        {
        }

        void PringName() const
        {
            m_Name.Print();
        }
    };

    void Main()
    {
        Entity entity("NickName");
        entity.PringName();

        String str1 = "Hello1";
        String str2 = (String&&)str1;
        str2.Print();

        String str3 = "Hello3";
        String str4 = std::move(str3);
        str4.Print();

        String str5 = "Hello5";
        String str6 = static_cast<String&&>(str5);
        str6.Print();

        String str7 = "Hello7";
        String str8 = static_cast<std::remove_reference_t<String>&&>(str7);
        str8.Print();

        str8 = std::move(str6);
        str8.Print();

        // getchar();
    }
}
