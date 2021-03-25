#include <cstdio>
#include <mutex>
#include <thread>

int food_count = 500000;

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
    std::thread philosopher_01(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_02(philosopher, std::ref(fork_two), std::ref(fork_one));
    std::thread philosopher_03(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_04(philosopher, std::ref(fork_two), std::ref(fork_one));
    std::thread philosopher_05(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_06(philosopher, std::ref(fork_two), std::ref(fork_one));
    std::thread philosopher_07(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_08(philosopher, std::ref(fork_two), std::ref(fork_one));
    std::thread philosopher_09(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_10(philosopher, std::ref(fork_two), std::ref(fork_one));
    std::thread philosopher_11(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_12(philosopher, std::ref(fork_two), std::ref(fork_one));
    std::thread philosopher_13(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_14(philosopher, std::ref(fork_two), std::ref(fork_one));
    std::thread philosopher_15(philosopher, std::ref(fork_one), std::ref(fork_two));
    std::thread philosopher_16(philosopher, std::ref(fork_two), std::ref(fork_one));

    philosopher_01.join();
    philosopher_02.join();
    philosopher_03.join();
    philosopher_04.join();
    philosopher_05.join();
    philosopher_06.join();
    philosopher_07.join();
    philosopher_08.join();
    philosopher_09.join();
    philosopher_10.join();
    philosopher_11.join();
    philosopher_12.join();
    philosopher_13.join();
    philosopher_14.join();
    philosopher_15.join();
    philosopher_16.join();

    printf("The philosophers are done eating.\n");
}
