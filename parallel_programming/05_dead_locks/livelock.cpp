#include <cstdio>
#include <mutex>
#include <thread>

int food_count = 5000;

void philosopher(std::mutex &fork_one, std::mutex &fork_two)
{
    while (food_count > 0)
    {
        fork_one.lock();
        if (!fork_two.try_lock())
        {
            fork_one.unlock();
            std::this_thread::yield();
        }
        else
        {
            if (food_count)
                food_count--;
            fork_two.unlock();
            fork_one.unlock();
        }
    }
}

int main()
{
    std::mutex fork_one, fork_two;
    std::thread philosopher_1(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_2(philosopher, std::ref(fork_two), std::ref(fork_one));
    std::thread philosopher_3(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_4(philosopher, std::ref(fork_two), std::ref(fork_one));

    philosopher_1.join();
    philosopher_2.join();
    philosopher_3.join();
    philosopher_4.join();

    printf("The philosophers are done eating.\n");
}
