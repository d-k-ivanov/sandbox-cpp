#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "EntityMock.h"
#include "Person.h"
#include "Player.h"

#include "Vec2.h"
#include "Vec3.h"
#include "Vertex.h"
#include "MyString.h"

#include "ScopedPointer.h"

#include <iostream>
#include <memory>
#include <vector>

#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    {
        std::vector<Vertex> vertices;

        vertices.push_back({1, 2, 3});
        vertices.push_back({4, 5, 6});

        for (int i = 0; i < vertices.size(); i++)
            std::cout << vertices[i] << std::endl;
        for (const Vertex v : vertices)
            std::cout << v << std::endl;

        vertices.erase(vertices.begin() + 1);

        for (const Vertex& v : vertices)
            std::cout << v << std::endl;

        vertices.clear();
    }
    {
        std::cout << "-------- Non Optimized -------" << std::endl;
        std::vector<Vertex> vertices;
        vertices.push_back(Vertex(1, 2, 3));
        vertices.push_back(Vertex(4, 5, 6));
        vertices.push_back(Vertex(7, 8, 9));

        std::cout << "---------- Optimized ---------" << std::endl;
        std::vector<Vertex> vertices2;
        vertices2.reserve(3);
        vertices2.emplace_back(1, 2, 3);
        vertices2.emplace_back(4, 5, 6);
        vertices2.emplace_back(7, 8, 9);
    }

    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
