#include <chrono>
#include <cstdio>
#include <thread>

bool chopping = true;

void task_executor(const char* name)
{
    unsigned int vegetable_count = 0;
    while (chopping)
        vegetable_count++;

    printf("%s chopped %u vegetables.\n", name, vegetable_count);
}

int main()
{
    std::thread task_one(task_executor, "Task One");
    std::thread task_two(task_executor, "Task Two");

    printf("Executions two tasks...\n");
    std::this_thread::sleep_for(std::chrono::seconds(1));
    chopping = false;

    task_one.join();
    task_two.join();
}
