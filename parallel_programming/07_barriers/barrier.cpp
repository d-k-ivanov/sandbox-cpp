#include <cstdio>
#include <mutex>
#include <thread>

#include "barrier.hpp"

unsigned int output = 1;
std::mutex mutex;

Barrier barrier(10);

void get_cpu_workload(unsigned long workUnits)
{
    unsigned long x = 0;
    for (unsigned long i; i < workUnits * 1000000; i++)
        x++;
}

void worker_one()
{
    get_cpu_workload(1);
    barrier.Wait();
    std::scoped_lock<std::mutex> lock(mutex);
    output *= 2;
    printf("Worker One DOUBLED the OUTPUT.\n");
}

void worker_two()
{
    get_cpu_workload(1);
    {
        std::scoped_lock<std::mutex> lock(mutex);
        output += 3;
    }
    printf("Worker Two ADDED 3 to the OUTPUT.\n");
    barrier.Wait();

}

int main()
{
    std::thread threads[10];
    for (int i = 0; i < 10; i += 2)
    {
        threads[i]     = std::thread(worker_one);
        threads[i+1]   = std::thread(worker_two);
    }

    for (auto& t : threads)
        t.join();

    printf("Final result: %u\n", output);
}
