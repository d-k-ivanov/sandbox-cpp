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

#include <algorithm>
#include <array>
#include <functional>
#include <iostream>
#include <memory>
#include <string>
#include <tuple>
#include <vector>

#ifdef _WIN32
#include <Windows.h>
#endif


// int main(int argc, char* argv[], char* env[])
int main()
{
    MainMemory::Main();
    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
