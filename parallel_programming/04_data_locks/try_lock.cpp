#include <chrono>
#include <cstdio>
#include <mutex>
#include <thread>

unsigned int task_counter = 0;
std::mutex mutex;

void task_executor(const char* name)
{
    int items_to_add = 0;
    while (task_counter <= 20)
    {
        // if (items_to_add)
        if (items_to_add && mutex.try_lock())
        {
            // mutex.lock();
            task_counter += items_to_add;
            printf("%s added %u item(s) to counter.\n", name, items_to_add);
            items_to_add = 0;
            std::this_thread::sleep_for(std::chrono::milliseconds(300)); // time spent: adding items
            mutex.unlock();
        }
        else
        {
            std::this_thread::sleep_for(std::chrono::milliseconds(100)); // time spent: collecting items
            items_to_add++;
            printf("%s collecting items.\n", name);
        }
    }
}

int main()
{
    auto start_time = std::chrono::steady_clock::now();
    std::thread thread_one(task_executor, "ThreadOne");
    std::thread thread_two(task_executor, "ThreadTwo");
    thread_one.join();
    thread_two.join();
    auto elapsed_time = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now() - start_time).count();
    printf("Elapsed Time: %.2f seconds\n", elapsed_time/1000.0);
}
