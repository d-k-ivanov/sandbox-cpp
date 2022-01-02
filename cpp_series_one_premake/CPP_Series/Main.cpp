#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "EntityMock.h"
#include "Person.h"
#include "Player.h"

#include "Vec2.h"
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
    const MyString string = "Test String";
    const MyString second = string;
    string[0] = 't';
    string[5] = 's';
    second[1] = 'E';
    second[2] = 'S';
    second[3] = 'T';

    PrintMyString(string);
    PrintMyString(second);

    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
