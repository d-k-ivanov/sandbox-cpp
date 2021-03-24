#include <chrono>
#include <cstdio>
#include <mutex>
#include <thread>

unsigned int task_counter = 0;
std::mutex mx;

void task_executor()
{
    for (int i = 0; i < 10000000; i++)
    {
        mx.lock();
        task_counter++;
        mx.unlock();
    }
}

int main()
{
    std::thread thread_one(task_executor);
    std::thread thread_two(task_executor);
    thread_one.join();
    thread_two.join();
    printf("Task counter value: %u \n", task_counter);
}
