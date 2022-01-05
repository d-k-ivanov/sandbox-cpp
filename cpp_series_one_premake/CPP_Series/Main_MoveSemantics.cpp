#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <iostream>
#include <memory>
#include <utility>

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

    void MainMove1()
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
    }

    struct A
    {
        A(int&& n)
        {
            std::cout << "rvalue overload, n=" << n << "\n";
        }

        A(int& n)
        {
            std::cout << "lvalue overload, n=" << n << "\n";
        }
    };

    class B
    {
    public:
        template <class T1, class T2, class T3>
        B(T1&& t1, T2&& t2, T3&& t3) :
            m_A1{std::forward<T1>(t1)},
            m_A2{std::forward<T2>(t2)},
            m_A3{std::forward<T3>(t3)}
        {
        }

    private:
        A m_A1, m_A2, m_A3;
    };

    template <class T, class U>
    std::unique_ptr<T> MakeUnique1(U&& u)
    {
        return std::unique_ptr<T>(new T(std::forward<U>(u)));
    }

    template <class T, class... U>
    std::unique_ptr<T> MakeUnique2(U&&... u)
    {
        return std::unique_ptr<T>(new T(std::forward<U>(u)...));
    }

    void MainForward1()
    {
        std::cout << "A\n";
        auto p1 = MakeUnique1<A>(2); // rvalue
        int i = 1;
        auto p2 = MakeUnique1<A>(i); // lvalue

        std::cout << "B\n";
        auto t = MakeUnique2<B>(2, i, 3);
    }

    void Main()
    {
        // MainMove1();
        MainForward1();

        // getchar();
    }
}
