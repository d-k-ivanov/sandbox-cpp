/*
 * =====================================================================
 *      Project :  multithreading
 *      File    :  example01.cpp
 *      Created :  06/04/2020 02:39:55 +0300
 * =====================================================================
 */

/* BASIC THREAD MANAGEMENT
 * 1. Create threads with three different callable objects (a function newValue, a lambda expression and a class operator)
 * 2. Use of join and detach methods
 * 3. Pass a ref value as argument
 */

#include <iostream>
#include <thread>
#include <vector>
#include <string>


void NewValue(int& value) {
    value = 2;
    const std::string out = "[ t0 ] [NewValue] new value: " + std::to_string(value) + " \n";
    std::cout << out;
}

class WorkClass {
public:
    void operator() () const
    {
        const std::string out = "[ t1 ] [WorkClass operator] is running\n";
        std::cout << out;
    };
};

int main() {
    std::cout << "[main] thread is running" << std::endl;
    std::vector<std::thread> threadPool;

    int value = 5;

    std::string valueOut = "[main] \told value: " + std::to_string(value);
    std::thread t0(NewValue, std::ref(value));

    //t0 must terminate before inspecting the new value
    t0.join();

    valueOut += "\tnew value: " + std::to_string(value) + "\n";
    std::cout << valueOut;

    std::thread t1{ WorkClass() };
    threadPool.push_back(std::move(t1));

    std::thread t2([]() {
        const std::string out = "[ t2 ] [lambda] running\n";
        std::cout << out; });
    threadPool.push_back(std::move(t2));

    for (auto& t : threadPool) {
        t.detach();
    }


    //std::this_thread::sleep_for(std::chrono::milliseconds(100));

    const std::string out = "[main] thread exits\n";
    std::cout << out;

    return 0;
}
