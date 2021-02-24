#include <cstdio>
#include <new>

class Point3D
{
    int _x = 0;
    int _y = 0;
    int _z = 0;
public:
    Point3D(int i = 0);
    ~Point3D();
    int x() { return _x; }
    int y() { return _y; }
    int z() { return _z; }
};

Point3D::Point3D(int i) : _x(i), _y(i + 1), _z(i + 2)
{
    std::puts("Point3D constructor");
}

Point3D::~Point3D()
{
    std::puts("Point3D destructor");
}

int main()
{
    try {
        Point3D * obj = new Point3D;
        std::printf("object: %d, %d, %d\n", obj->x(), obj->y(), obj->z());
        delete obj;
    } catch (std::bad_alloc & ba) {
        std::printf("new Point3D failed: %s\n", ba.what());
        return 1;
    }

    std::printf("\n");

    try {
        Point3D * objs = new Point3D[5];

        for (size_t i = 0; i < 5; i++)
            std::printf("object[%zd]: %d, %d, %d\n", i, objs[i].x(), objs[i].y(), objs[i].z());

        delete[] objs;
    } catch (std::bad_alloc & ba) {
        std::printf("new Point3D failed: %s\n", ba.what());
        return 2;
    }

    std::printf("\n");

    Point3D * obj2 = new(std::nothrow) Point3D;
    if (obj2 == nullptr)
    {
        std::puts("Error: new Point3D is failed. Exitins");
        return 3;
    }

    std::printf("object: %d, %d, %d\n", obj2->x(), obj2->y(), obj2->z());
    delete obj2;

    return 0;
}
