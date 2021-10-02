/*
    cl par_vec.cpp  /std=c++17
*/

#include <algorithm>
#include <chrono>
#include <execution>
#include <iostream>>
#include <string>
#include <vector>

typedef void(*FunctionPointer)();

void Test()
{
    std::vector<std::string> v(9999999, "Hello");

    std::for_each(v.begin(), v.end(), [&](std::string& elem)
    {
        elem += " World!";
    });
}

void TestParallel()
{
    std::vector<std::string> v(9999999, "Hello");

    std::for_each(std::execution::par, v.begin(), v.end(), [&](std::string& elem)
    {
        elem += " World!";
    });
}

std::string GetFunctionExecutionTime(FunctionPointer function)
{
    std::chrono::time_point<std::chrono::high_resolution_clock> start = std::chrono::high_resolution_clock::now();

    function();

    std::chrono::time_point<std::chrono::high_resolution_clock> stop = std::chrono::high_resolution_clock::now();
    std::chrono::nanoseconds nsDiff = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start);

    // std::cout << "Execution time: " << nsDiff.count() << " ns\n";
    return std::to_string(nsDiff.count());
}

int main(int argc, char const *argv[])
{
    std::cout << "Execution time (Normal): " << GetFunctionExecutionTime(Test) << " ns\n";
    std::cout << "Execution time (Parall): " << GetFunctionExecutionTime(TestParallel) << " ns\n";
    return 0;
}
