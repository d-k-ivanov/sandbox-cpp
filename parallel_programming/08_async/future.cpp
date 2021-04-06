#include <chrono>
#include <future>

int Deep_Thought()
{
    printf("Calculating the answer to the Ultimate Question...\n");
    std::this_thread::sleep_for(std::chrono::seconds(3));
    return 42;
}

int main()
{
    printf("People ask: What is the Answer to the Ultimate Question of Life, The Universe, and Everything?\n");
    std::future<int> result = std::async(std::launch::async, Deep_Thought);
    printf("People is living while they waits for the result...\n");
    printf("Deep Thought responded with %d.\n", result.get());
}
