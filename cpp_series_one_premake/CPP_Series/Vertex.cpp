#include "Vertex.h"

#include <iostream>

Vertex::Vertex(const float x, const float y, const float z): x(x), y(y), z(z)
{
}

Vertex::Vertex(): x(0.0f), y(0.0f), z(0.0f)
{
    std::cout << "Void constructor used!" << std::endl;
}

Vertex::Vertex(const Vertex& vertex): x(vertex.x), y(vertex.y), z(vertex.z)
{
    std::cout << "Copied!" << std::endl;
}

std::ostream& operator<<(std::ostream& stream, const Vertex& vertex)
{
    stream << vertex.x << ", " << vertex.y << ", " << vertex.z;
    return stream;
}
