#include <cstdio>
#include <mutex>
#include <thread>

unsigned int task_counter_one = 0;
unsigned int task_counter_two = 0;
// std::mutex mutex;
std::recursive_mutex mutex;

void task_executor_one()
{
    mutex.lock();
    task_counter_one++;
    mutex.unlock();
}

void task_executor_two()
{
    mutex.lock();
    task_counter_two++;

    // Introduce the problem
    task_executor_one();

    mutex.unlock();
}

void task_mapper()
{
    for (int i = 0; i < 10000; i++)
    {
        task_executor_one();
        task_executor_two();
    }
}

int main() {
    std::thread thread_one(task_mapper);
    std::thread thread_two(task_mapper);
    thread_one.join();
    thread_two.join();

    printf("Task One counter value: %u \n", task_counter_one);
    printf("Task Two counter value: %u \n", task_counter_two);
}
