#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "EntityMock.h"
#include "Person.h"
#include "Player.h"

#include "Vec2.h"
#include "Vec3.h"
#include "MyString.h"

#include "ScopedPointer.h"

#include <iostream>
#include <memory>


#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
#pragma warning(push)
#pragma warning(disable : 4311)
#pragma warning(disable : 4302)
    int offset = (long)&((Vec3*)nullptr)->x;
    std::cout << offset << std::endl;

    const int offset2 = (long)&((Vec3*)0)->x;
    std::cout << offset2 << std::endl;

    // this is the same and more simple to understand:
    Vec3* v3 = new Vec3();
    offset = ((long)&(v3->x)) - (long)v3;
    std::cout << offset << std::endl;

    offset = (long)&((Vec3*)nullptr)->y;
    std::cout << offset << std::endl;

    offset = (long)&((Vec3*)nullptr)->z;
    std::cout << offset << std::endl;
#pragma warning(pop)

    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
