#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "Person.h"
#include "Player.h"

#include "Vec2.h"

#include <iostream>

#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    Log log;
    log.SetLevel(Log::LogLevelInfo);

    // log.Warn("Warning!");
    // log.Error("Error!");
    // log.Info("Info!");

    const Vec2 position(4.0f, 4.0f);
    std::cout << "Position: " << position << std::endl;
    const Vec2 speed(0.5f, 1.5f);
    std::cout << "Speed: " << speed << std::endl;
    const Vec2 powerUp(11.1f, 11.1f);
    std::cout << "PowerUp: " << powerUp << std::endl;

    const Vec2 result = position + speed * powerUp;

    if (position != result) {
        std::cout << "Position + Speed * PowerUp = " << result << std::endl;
    }

    // std::system("pause");
    return 0;
}
