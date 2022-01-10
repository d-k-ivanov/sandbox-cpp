#include "TimerBasic.h"

#include <atomic>
#include <chrono>
#include <iostream>
#include <thread>
#include <vector>


namespace MainThreads
{
    static bool finished = false;

    void DoWork()
    {
        using namespace std::literals::chrono_literals;
        std::cout << "Started thread id:" << std::this_thread::get_id() << std::endl;
        while (!finished)
        {
            std::cout << "Working... Press Enter key to finish...\n";
            std::this_thread::sleep_for(1s);
        }
    }

    void Function()
    {
        TimerBasic time;
        for (int i = 0; i < 1000; i++)
            // std::cout << "Hello" << std::endl;
            // std::cout << "Hello\n";
            std::cout << i << " ";
        std::cout << "\n";
    }

    void ThreadTiming()
    {
        using namespace std::literals::chrono_literals;
        const auto start = std::chrono::high_resolution_clock::now();

        std::cout << "Started Main thread id:" << std::this_thread::get_id() << std::endl;
        std::thread worker(DoWork);
        std::cin.get();

        finished = true;

        worker.join();

        std::cout << "Finished." << std::endl;
        std::cout << "Continuing to Main thread id:" << std::this_thread::get_id() << std::endl;


        // std::this_thread::sleep_for(1s);

        const auto end = std::chrono::high_resolution_clock::now();
        const std::chrono::duration<float> duration = end - start;
        std::cout << "\t-----" << std::endl;
        std::cout << "\tDuration: " << duration.count() << "s" << std::endl;
        std::cout << "------------------------------------------------------------" << std::endl;

        Function();
    }

    class ThreadSafeCounter
    {
    public:
        ThreadSafeCounter() : m_Counter(0)
        {
        }

        void Increment() { m_Counter.fetch_add(1); }
        int GetCount() const { return m_Counter; }

    private:
        std::atomic_int32_t m_Counter;
    };

    void ThreadCounter()
    {
        ThreadSafeCounter counter;
        const int n = 100;
        std::vector<std::thread> threads;

        // Spawn `n` threads that all share a single counter.
        threads.reserve(n);
        for (int i = 0; i < n; i++)
        {
            threads.push_back(std::thread([&counter]
            {
                // Unsynchronized call of a non-const method.
                // Only safe because the type is thread-safe.
                counter.Increment();
            }));
        }

        for (auto& thread : threads)
        {
            thread.join();
        }

        // This will ultimately print `n`.
        std::cout << counter.GetCount() << "\n";
    }

    void Main()
    {
        // ThreadTiming();
        ThreadCounter();
    }
}
