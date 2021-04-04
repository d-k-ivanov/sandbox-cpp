#include <cstdio>
#include <mutex>
#include <thread>

int shared_data = 10;
std::mutex mutex;

void hungry_person(int id)
{
    int wasted_cycles = 0;
    while (shared_data > 0)
    {
        std::unique_lock<std::mutex> lock(mutex);
        if ((id == shared_data % 2) && (shared_data > 0))
        {
            shared_data--;
        }
        else
        {
            wasted_cycles++;
        }
    }
    printf("Thread %d wasted %u cycles.\n", id, wasted_cycles);
}

int main()
{
    std::thread hungry_threads[2];
    for (int i = 0; i < 2; i++)
        hungry_threads[i] = std::thread(hungry_person, i);

    for (auto& ht : hungry_threads)
        ht.join();
}
