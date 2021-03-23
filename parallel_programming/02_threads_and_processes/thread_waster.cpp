#include <cstdio>
#include <thread>
#include <chrono>

// a simple function that wastes CPU cycles "forever"
void cpu_waster()
{
    printf("CPU Waster Process ID: %d\n", getpid());
    printf("CPU Waster Thread ID %d\n", std::this_thread::get_id());
    while(true) continue;
}

int main()
{
    printf("Main Process ID: %d\n", getpid());
    printf("Main Thread ID: %d\n", std::this_thread::get_id());
    std::thread thread1(cpu_waster);
    std::thread thread2(cpu_waster);

    // keep the main thread alive "forever"
    while(true)
        std::this_thread::sleep_for(std::chrono::seconds(1));
}
