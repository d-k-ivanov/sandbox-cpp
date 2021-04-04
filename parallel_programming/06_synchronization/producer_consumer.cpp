#include <condition_variable>
#include <cstdio>
#include <mutex>
#include <queue>
#include <thread>

class ProductLine
{
    public:
        void produce_data(int i)
        {
            std::unique_lock<std::mutex> lock(mutex);
            product_queue.push(i);
            lock.unlock();
            out_of_data.notify_one();
        }

        int aquire_data()
        {
            std::unique_lock<std::mutex> lock(mutex);
            while (product_queue.empty())
                out_of_data.wait(lock);

            int data = product_queue.front();
            product_queue.pop();
            return data;
        }

    private:
        std::queue<int> product_queue;
        std::mutex mutex;
        std::condition_variable out_of_data;
};

ProductLine data_line = ProductLine();

void producer()
{
    for (int i = 0; i < 1000000; i++)
        data_line.produce_data(1);

    data_line.produce_data(-1);
    printf("Producer is out of data!\n");
}

void consumer()
{
    int data_chunks = 0;
    while (true)
    {
        int data = data_line.aquire_data();
        if (data == -1)
        {
            printf("Consumer took %d data chunks.\n", data_chunks);
            data_line.produce_data(-1);
            return;
        }
        else
        {
            data_chunks += data;
        }
    }
}

int main()
{
    std::thread procucerOne(producer);
    std::thread consumerOne(consumer);
    std::thread consumerTwo(consumer);
    procucerOne.join();
    consumerOne.join();
    consumerTwo.join();
}
