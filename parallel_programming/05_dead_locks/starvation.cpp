#include <array>
#include <cstdio>
#include <mutex>
#include <thread>

int food_count = 5000;

void philosopher(std::mutex &forks)
{
    int food_eaten = 0;
    while (food_count > 0)
    {
        std::scoped_lock lock(forks);
        if (food_count)
        {
            food_count--;
            food_eaten++;
        }
    }
    printf("Philosopher %zu ate %d.\n", std::hash<std::thread::id>{}(std::this_thread::get_id()), food_eaten);
}

int main()
{
    std::mutex forks;
    // std::array<std::thread, 2> philosophers;
    std::array<std::thread, 200> philosophers;

    for (size_t i = 0; i < philosophers.size(); i++)
        philosophers[i] = std::thread(philosopher, std::ref(forks));

    for (size_t i = 0; i < philosophers.size(); i++)
        philosophers[i].join();

    printf("The philosophers are done eating.\n");
}
