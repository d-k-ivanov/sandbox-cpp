#include "Vector.h"

#include <string>


namespace MainVector
{
    Vector3::Vector3()
        : m_MemBlock(new int[5])
    {
    };

    Vector3::Vector3(const float scalar)
        : x(scalar), y(scalar), z(scalar), m_MemBlock(new int[5])
    {
    }

    Vector3::Vector3(const float x, const float y, const float z)
        : x(x), y(y), z(z), m_MemBlock(new int[5])
    {
    }

    // Vector3::Vector3(const Vector3&)
    //     : m_MemBlock(new int[5])
    // {
    //     std::cout << "V3 Copied\n";
    // }

    Vector3::Vector3(Vector3&& other) noexcept
        : m_MemBlock(other.m_MemBlock)
    {
        other.m_MemBlock = nullptr;
        std::cout << "V3 Moved\n";
    }

    Vector3::~Vector3()
    {
        std::cout << "V3 Destroyed\n";
        delete[] m_MemBlock;
    }

    // Vector3& Vector3::operator=(const Vector3& other)  // NOLINT(bugprone-unhandled-self-assignment)
    // {
    //     std::cout << "V3 Copied\n";
    //     m_MemBlock = new int[5];
    //     x = other.x;
    //     y = other.y;
    //     z = other.z;
    //     return *this;
    // }

    Vector3& Vector3::operator=(Vector3&& other) noexcept
    {
        std::cout << "V3 Moved\n";
        m_MemBlock = other.m_MemBlock;
        other.m_MemBlock = nullptr;
        x = other.x;
        y = other.y;
        z = other.z;
        return *this;
    }

    void Main()
    {
        // Vector<std::string> vector;
        // vector.PushBack("Hello ");
        // vector.PushBack("World");
        // vector.PushBack("!");
        // vector.PushBack("Hello ");
        // vector.PushBack("World");
        // vector.PushBack("!");
        // vector.PushBack("Hello ");
        // vector.PushBack("World");
        // vector.PushBack("!");
        // PrintVector(vector);

        Vector<Vector3> vector;
        // vector.PushBack(Vector3(1.1f));
        // vector.PushBack(Vector3(1.1f, 2.2f, 3.3f));
        // vector.PushBack(Vector3());

        vector.EmplaceBack(1.1f);
        vector.EmplaceBack(1.1f, 2.2f, 3.3f);
        vector.EmplaceBack();
        // PrintVector(vector);

        vector.PopBack();
        // PrintVector(vector);

        vector.EmplaceBack(5.5f);
        vector.EmplaceBack(10.11f, 20.22f, 30.33f);
        vector.EmplaceBack(0.6f, 0.2f, 0.1f);
        vector.EmplaceBack(1.1f);
        // PrintVector(vector);

        vector.PopBack();
        vector.PopBack();
        // PrintVector(vector);

        vector.EmplaceBack(1.1f, 2.2f, 3.3f);
        vector.EmplaceBack();
        vector.PopBack();
        // PrintVector(vector);

        vector.EmplaceBack(5.5f);
        vector.EmplaceBack(10.11f, 20.22f, 30.33f);
        vector.EmplaceBack(0.6f, 0.2f, 0.1f);
        // PrintVector(vector);

        vector.Clear();
        vector.EmplaceBack(5.5f);
        vector.EmplaceBack(10.11f, 20.22f, 30.33f);
        vector.EmplaceBack(0.6f, 0.2f, 0.1f);
        PrintVector(vector);
    }
}
