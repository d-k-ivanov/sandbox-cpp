#include <condition_variable>
#include <cstdio>
#include <mutex>
#include <thread>

int shared_data = 10;
std::mutex mutex;
std::condition_variable shared_data_taken;

void take_some_data(int id)
{
    int wasted_cycles = 0;
    while (shared_data > 0)
    {
        std::unique_lock<std::mutex> lock(mutex);
        // if ((id == shared_data % 5) && (shared_data > 0))
        //     shared_data--;
        // else
        //     wasted_cycles++;

        while ((id != shared_data % 5) && (shared_data > 0))
        {
            wasted_cycles++;
            shared_data_taken.wait(lock);
        }
        if (shared_data > 0)
        {
            shared_data--;
            lock.unlock();
            shared_data_taken.notify_all();
        }
    }
    printf("Thread %d wasted %u cycles.\n", id, wasted_cycles);
}

int main()
{
    std::thread hungry_threads[5];
    for (int i = 0; i < 5; i++)
        hungry_threads[i] = std::thread(take_some_data, i);

    for (auto& ht : hungry_threads)
        ht.join();
}
