#include <cstdio>
#include <thread>

void worker(int worker_id)
{
    // printf("Thread %d has worker ID: %d.\n", std::this_thread::get_id(), worker_id);
    printf("Thread ID: %zu\tWorker ID: %d\n", std::hash<std::thread::id>{}(std::this_thread::get_id()), worker_id);
}

int main()
{
    std::thread workers[100];
    for (int i=0; i<100; i++)
        workers[i] = std::thread(worker, i);

    for (auto& c : workers)
        c.join();
}
