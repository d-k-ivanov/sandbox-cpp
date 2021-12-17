#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

#if defined(WIN32)
    #include <conio.h>
#else
    #include <stdio.h>
    #include <sys/select.h>
    #include <termios.h>
    #include <stropts.h>

    void enable_raw_mode()
    {
        termios term;
        tcgetattr(0, &term);
        term.c_lflag &= ~(ICANON | ECHO); // Disable echo as well
        tcsetattr(0, TCSANOW, &term);
    }

    void disable_raw_mode()
    {
        termios term;
        tcgetattr(0, &term);
        term.c_lflag |= ICANON | ECHO;
        tcsetattr(0, TCSANOW, &term);
    }

    bool kbhit()
    {
        int byteswaiting;
        ioctl(0, FIONREAD, &byteswaiting);
        return byteswaiting > 0;
    }
#endif

boost::mutex mutex;
bool Expired = false;

void TreadProcess()
{
    while (1)
    {
        {
            boost::mutex::scoped_lock lock(mutex);
            if (Expired)
                break;
#if defined(WIN32)
            kbhit();
#elif
            enable_raw_mode()
            kbhit()
            disable_raw_mode()
#endif
        }
        boost::this_thread::sleep(boost::posix_time::milliseconds(1));
    }
}

int main(int argc, char *argv[])
{
    boost::thread b_worker(TreadProcess);
    b_worker.timed_join(boost::posix_time::milliseconds(5000));
    {
        boost::mutex::scoped_lock lock(mutex);
        Expired = true;
    }
    b_worker.join();
    return 0;
}
