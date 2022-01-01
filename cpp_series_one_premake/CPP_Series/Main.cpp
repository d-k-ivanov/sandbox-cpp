#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "EntityMock.h"
#include "Person.h"
#include "Player.h"

#include "Vec2.h"

#include "ScopedPointer.h"

#include <iostream>


#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    {
        ScopedPointer<EntityMock> e1 = new EntityMock();
        [[maybe_unused]] auto e2 = new EntityMock();
    }

    std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
