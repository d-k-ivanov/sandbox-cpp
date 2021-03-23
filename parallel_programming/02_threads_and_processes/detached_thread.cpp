#include <chrono>
#include <cstdio>
#include <thread>

void task_executor(const char* name)
{
    while (true)
    {
        printf("  THREAD %s: RUNNING state.\n", name);
        printf("  THREAD %s: BLOCKED state with sleep for a 1 seconds.\n", name);
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
}

int main()
{
    std::thread task_one(task_executor, "Thread_1");
    task_one.detach();
    for (int i=0; i<3; i++)
    {
        printf("MAIN: RUNNING state\n");
        printf("MAIN: BLOCKED state with sleep for a 600 ms\n");
        std::this_thread::sleep_for(std::chrono::milliseconds(600));
    }
    printf("MAIN: Done!\n");
    // task_one.join();

    // NOTE THE EXIT CODE
}
