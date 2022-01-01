#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "Person.h"
#include "Player.h"

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

    std::cout << sizeof(Entity) << std::endl;
    std::cout << sizeof(Player) << std::endl;
    std::cout << sizeof(Person) << std::endl;

    Player player { "Player" }; //const auto player = new Player("Player");
    PrintName(&player);
    PrintName(&player);
    PrintName(&player);
    PrintName(&player);

    player.PrintGetNameCounter();


    // std::system("pause");
    return 0;
}
