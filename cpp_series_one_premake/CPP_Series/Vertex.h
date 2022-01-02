#pragma once
#include <ostream>

struct Vertex
{
    float x, y, z;

    Vertex(float x, float y, float z);
    Vertex();
    Vertex(const Vertex& vertex);
};

std::ostream& operator<<(std::ostream& stream, const Vertex& vertex);
