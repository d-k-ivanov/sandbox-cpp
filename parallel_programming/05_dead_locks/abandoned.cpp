#include <cstdio>
#include <mutex>
#include <thread>

int food_count = 5000;

void philosopher(const char* name, std::mutex &forks)
{
    while (food_count > 0)
    {
        // forks.lock();
        std::scoped_lock lock(forks);
        if (food_count)
        {
            food_count--;
        }

        if (food_count == 10)
        {
            printf("This philosopher %s has had enough!\n", name);
            break;
        }
        // forks.unlock();
    }
}

int main()
{
    std::mutex forks;
    std::thread philosopher_one(philosopher, "Socrates", std::ref(forks));
    std::thread philosopher_two(philosopher, "Plato", std::ref(forks));

    philosopher_one.join();
    philosopher_two.join();

    printf("The philosophers are done eating.\n");
}
