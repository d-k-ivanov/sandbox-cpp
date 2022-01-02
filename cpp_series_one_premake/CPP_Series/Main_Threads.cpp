#include <chrono>
#include <iostream>
#include <thread>

namespace MainThreads
{
    static bool finished = false;

    struct Timer
    {
        std::chrono::time_point<std::chrono::steady_clock> start, end;
        std::chrono::duration<float> duration;

        Timer() : duration()
        {
            start = std::chrono::high_resolution_clock::now();
        }

        ~Timer()
        {
            end = std::chrono::high_resolution_clock::now();
            duration = end - start;

            const float ms = duration.count() * 1000.0f;
            std::cout << "\t----\n";
            std::cout << "\tDuration: " << ms << "ms" << std::endl;
        }
    };

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
        Timer time;
        for (int i = 0; i < 1000; i++)
            // std::cout << "Hello" << std::endl;
            // std::cout << "Hello\n";
            std::cout << i <<" ";
        std::cout << "\n";
    }


    void Main()
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
}
