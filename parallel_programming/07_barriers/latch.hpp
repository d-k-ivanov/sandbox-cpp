#ifndef LATCH_H
#define LATCH_H

#include <cassert>
#include <condition_variable>
#include <memory>

class Latch
{
public:
    explicit Latch(int threads) noexcept;
    Latch(const Latch&) = delete;
    Latch(Latch&&) = delete;
    ~Latch() = default;

    Latch& operator=(const Latch&) = delete;
    Latch& operator=(Latch&&) = delete;

    void CountDown() noexcept;
    void Wait() noexcept;

private:
    std::mutex m_Mutex;
    std::condition_variable m_Cond;
    int m_Generation;
    int m_Threads;
    bool CountDown(std::unique_lock<std::mutex>& lock) noexcept;
};

inline Latch::Latch(int threads) noexcept : m_Generation(0), m_Threads(threads)
{
    assert((threads > 0) && "Latch threads counter must be greater than zero!");
}

bool Latch::CountDown(std::unique_lock<std::mutex>& lock) noexcept
{
    // Count down the latch threads counter and check its value
    if (--m_Threads == 0)
    {
        // Increase the current latch generation
        ++m_Generation;
        // Notify all waiting threads
        m_Cond.notify_all();
        // Wait for the next latch generation
        return true;
    }
    // Notify each of remaining threads
    return false;
}

void Latch::CountDown() noexcept
{
    std::unique_lock<std::mutex> lock(m_Mutex);
    // Count down the latch threads counter
    CountDown(lock);
}

void Latch::Wait() noexcept
{
    std::unique_lock<std::mutex> lock(m_Mutex);
    // Check the latch threads counter value
    if (m_Threads == 0)
        return;
    // Remember the current latch generation
    int generation = m_Generation;
    // Wait for the next latch generation
    m_Cond.wait(lock, [&, this]() { return generation != m_Generation; });
}

#endif // LATCH_H
