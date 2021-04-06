#include <cstdio>
#include <thread>

#include "thread_pool.h"

void worker(int worker_id)
{
    // printf("Thread %d has worker ID: %d.\n", std::this_thread::get_id(), worker_id);
    printf("Thread ID: %zu\tWorker ID: %d\n", std::hash<std::thread::id>{}(std::this_thread::get_id()), worker_id);
}

int main()
{
    ThreadPool pool(4);  // 4 threads
    for (int i=0; i<100; i++)
        pool.enqueue(worker, i);
}
