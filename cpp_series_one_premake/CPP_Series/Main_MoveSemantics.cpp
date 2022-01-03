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
        // getchar();
    }
}
