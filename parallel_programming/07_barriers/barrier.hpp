#ifndef BARRIER_H
#define BARRIER_H

#include <condition_variable>
#include <mutex>
#include <thread>

class Barrier
{
public:
    explicit Barrier(std::size_t iCount):
        m_Threshold(iCount),
        m_Count(iCount),
        m_Generation(0)
    {
    }

    void Wait()
    {
        std::unique_lock<std::mutex> lock{m_Mutex};
        auto generation = m_Generation;
        if (!--m_Count)
        {
            m_Generation++;
            m_Count = m_Threshold;
            m_Cond.notify_all();
        }
        else
        {
            m_Cond.wait(lock, [this, generation] { return generation != m_Generation; });
        }
    }

private:
    std::mutex m_Mutex;
    std::condition_variable m_Cond;
    std::size_t m_Threshold;
    std::size_t m_Count;
    std::size_t m_Generation;
};

#endif // BARRIER_H
