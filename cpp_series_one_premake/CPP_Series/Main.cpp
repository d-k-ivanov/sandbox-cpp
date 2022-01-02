#include "Main.h"

#include "Log.h"
#include "Entity.h"
#include "EntityMock.h"
#include "Person.h"
#include "Player.h"

#include "Vec2.h"

#include "ScopedPointer.h"

#include <iostream>
#include <memory>

#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    {
        ScopedPointer<EntityMock> e1 = new EntityMock("e1");
        [[maybe_unused]] auto e2 = new EntityMock("e2");
    }

    {
        std::unique_ptr<EntityMock> e3(new EntityMock("e3"));
        e3->Print();
        std::unique_ptr<EntityMock> e4 = std::make_unique<EntityMock>("e4");
        e4->Print();
    }

    {
        std::shared_ptr<EntityMock> e5;
        {
            std::shared_ptr<EntityMock> e6(new EntityMock("e6"));
            e6->Print();

            std::shared_ptr<EntityMock> e7 = std::make_shared<EntityMock>("e7");
            e7->Print();

            e5 = e7;
            e5->Print();
        }
    }

    {
        std::weak_ptr<EntityMock> e8;
        {
            std::shared_ptr<EntityMock> e9 = std::make_shared<EntityMock>("e9");
            std::weak_ptr<EntityMock> weakEntity = e9;
            weakEntity.lock()->Print();
            e9->Print();
            e8 = e9;
            e8.lock()->Print();
        }
        if (e8.expired())
            std::cout << "e8: Expired. Skipping...";
        else
            e8.lock()->Print();
    }

    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
