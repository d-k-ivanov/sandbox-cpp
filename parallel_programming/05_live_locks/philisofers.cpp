#include <cstdio>
#include <mutex>
#include <thread>

int food_count = 5000;

void philosopher(std::mutex &fork_one, std::mutex &fork_two)
{
    while (food_count > 0)
    {
        // fork_one.lock();
        // fork_two.lock();

        std::scoped_lock lock(fork_one, fork_two);
        if (food_count)
        {
            food_count--;
        }

        // fork_two.unlock();
        // fork_one.unlock();
    }
}

int main()
{
    std::mutex fork_one, fork_two;
    std::thread philosopher_one(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_two(philosopher, std::ref(fork_two), std::ref(fork_one));
    // std::thread philosopher_two(philosopher, std::ref(fork_one), std::ref(fork_two));

    philosopher_one.join();
    philosopher_two.join();

    printf("The philosophers are done eating.\n");
}
