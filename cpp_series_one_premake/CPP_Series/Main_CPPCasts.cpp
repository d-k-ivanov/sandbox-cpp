#include <iostream>

#pragma warning(push)
#pragma warning(disable : 4244) // ignore wrong casts
#pragma warning(disable : 4189) // ignore not used variables
namespace MainCppCasts
{
    class Base
    {
    public:
        Base();
        virtual ~Base();
    };

    Base::Base() = default;
    Base::~Base() = default;

    class Derived final : public Base
    {
    public:
        Derived();
        ~Derived() override;
    };

    Derived::Derived() = default;
    Derived::~Derived() = default;

    class AnotherClass final : public Base
    {
    public:
        AnotherClass();
        ~AnotherClass() override;
    };

    AnotherClass::AnotherClass() = default;
    AnotherClass::~AnotherClass() = default;

    class Entity
    {
    public:
        virtual void printName()
        {
        }
    };

    class Player : public Entity
    {
    };

    class Enemy : public Entity
    {
    };

    void Main()
    {
        int a = 5;
        double val = a; // Implicit

        double val1 = 5.25;
        // Implicit
        int a1 = val1;

        // Explicit: C style
        int a2 = (int)val1;

        const double val2 = (int)val1 + 5.1;

        std::cout << val2 << std::endl;
        std::cout << (int)(val1 + 5.1) << std::endl;

        double s = static_cast<int>(val1) + 5.1; // Explicit: Cpp style

        std::cout << "---------------------\n";

        double value = 5.25;
        double b = (int)value + 5.3;

        AnotherClass* s1 = reinterpret_cast<AnotherClass*>(&value);

        Derived* derived = new Derived();
        Base* base = derived;

        AnotherClass* ac0 = dynamic_cast<AnotherClass*>(base);
        if (ac0)
            std::cout << "dynamic_cast<AnotherClass*>(base): Success0\n";
        else
            std::cout << "dynamic_cast<AnotherClass*>(base): Not-Success0\n";

        AnotherClass* ac1 = static_cast<AnotherClass*>(base);
        if (ac1)
            std::cout << "static_cast<AnotherClass*>(base): Success1\n";
        else
            std::cout << "static_cast<AnotherClass*>(base): Not-Success1\n";

        Derived* ac2 = dynamic_cast<Derived*>(base);
        if (ac2)
            std::cout << "dynamic_cast<Derived*>(base): Success2\n";
        else
            std::cout << "dynamic_cast<Derived*>(base): Not-Success2\n";

        std::cout << "---------------------\n";

        Player* player = new Player();
        Entity* actuallyPlayer = player; // Implicit
        Entity* actuallyEnemy = new Enemy();


        Player* player1 = (Player*)actuallyEnemy;
        if (player1)
            std::cout << "(Player*)actuallyEnemy: Success\n";
        else
            std::cout << "(Player*)actuallyEnemy: Not-Success\n";

        Player* player2Enemy = static_cast<Player*>(actuallyEnemy);
        if (player2Enemy)
            std::cout << "static_cast<Player*>(actuallyEnemy): Success\n";
        else
            std::cout << "static_cast<Player*>(actuallyEnemy): Not-Success\n";

        Player* player3Enemy = dynamic_cast<Player*>(actuallyEnemy);
        if (player3Enemy)
            std::cout << "dynamic_cast<Player*>(actuallyEnemy): Success\n";
        else
            std::cout << "dynamic_cast<Player*>(actuallyEnemy): Not-Success\n";

        Player* player4Player = dynamic_cast<Player*>(actuallyPlayer);
        if (player4Player)
            std::cout << "dynamic_cast<Player*>(actuallyPlayer): Success\n";
        else
            std::cout << "dynamic_cast<Player*>(actuallyPlayer): Not-Success\n";
    }
}
#pragma warning(pop)
