#include <chrono>
#include <cstdio>
#include <thread>

void thread_task(const char* name)
{
    printf("  THREAD %s: RUNNING state.\n", name);
    printf("  THREAD %s: BLOCKED state with sleep for a 1 seconds.\n", name);
    std::this_thread::sleep_for(std::chrono::seconds(1));
    printf("  THREAD %s: RUNNING state.\n", name);
    printf("  THREAD %s: BLOCKED state with sleep for a 1 seconds.\n", name);
    std::this_thread::sleep_for(std::chrono::seconds(1));
    printf("  THREAD %s: RUNNING state.\n", name);
    printf("  THREAD %s: BLOCKED state with sleep for a 1 seconds.\n", name);
    std::this_thread::sleep_for(std::chrono::seconds(1));
    printf("  THREAD %s: RUNNING state.\n", name);
}

int main()
{
    printf("MAIN: NEW thread.\n");
    std::thread thread_one(thread_task, "Thread_1");
    printf("    Is Thread_1 joinable? %s\n", thread_one.joinable() ? "true" : "false");

    printf("MAIN: RUNNING state\n");
    printf("MAIN: BLOCKED state with sleep for a 1 second\n");
    std::this_thread::sleep_for(std::chrono::seconds(1));
    printf("    Is Thread_1 joinable? %s\n", thread_one.joinable() ? "true" : "false");

    printf("MAIN: BLOCKED state, waiting for Thread_1.\n");
    thread_one.join();
    printf("    Is Thread_1 joinable? %s\n", thread_one.joinable() ? "true" : "false");

    printf("Main thread and Thread_1 are both done!\n");
}
