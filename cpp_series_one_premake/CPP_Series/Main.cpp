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

    const Player player { "Player 1" }; //const auto player = new Player("Player");
    PrintName(&player);
    PrintName(&player);
    PrintName(&player);
    PrintName(&player);

    player.PrintGetNameCounter();
    Player::PrintNumberOfEntities();
    const Player player2{ "Player 2" };
    const Player player3{ "Player 3" };
    const Player player4{ "Player 4" };
    Player::PrintNumberOfEntities();

    // std::system("pause");
    return 0;
}
