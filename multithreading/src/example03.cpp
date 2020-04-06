/*
 * =====================================================================
 *      Project :  multithreading
 *      File    :  example03.cpp
 *      Created :  06/04/2020 03:02:52 +0300
 * =====================================================================
 */


#include <thread>
#include <iostream>
#include <string>

void RunA(bool& value, const int i) {
    if (value) {
        //value should always be 1
        const auto out = "[ " + std::to_string(i) + " ] value " + std::to_string(value) + "\n";
        std::cout << out;
    } else
    {
        const auto out = "[ " + std::to_string(i) + " ] value " + std::to_string(value) + "\n";
        std::cout << out;
    }
}

void RunB(bool& value) {
    value = false;
}
int main() {
    for (int i = 0; i < 50; i++) {
        bool value = true; //1
        std::thread tA(RunA, std::ref(value), i);
        std::thread tB(RunB, std::ref(value));
        tA.join();
        tB.join();
    }
}
