#include <Windows.h>
#include <iostream>
#include <string>

#define TIMER_VALUE (5 * 1000) // 5 seconds = 5000 milli seconds
HANDLE g_hExitEvent = NULL;

bool in_time = false;
std::string str;

bool WaitingForImput();

void CALLBACK EndOfTimeCallback(PVOID lpParameter, BOOLEAN TimerOrWaitFired)
{
    if (!in_time)
    {
        std::cout << "\nTime is up... Repeat..." << std::endl;
        str = "";
        in_time = WaitingForImput();
    }
    SetEvent(g_hExitEvent);
}

bool WaitingForImput()
{
    HANDLE hNewTimer = NULL;
    BOOL IsCreated = CreateTimerQueueTimer(&hNewTimer, NULL, EndOfTimeCallback, NULL, TIMER_VALUE, 0, WT_EXECUTELONGFUNCTION);

    g_hExitEvent = CreateEvent(NULL, TRUE, FALSE, NULL);

    std::cout << "Input any string in 5 seconds .. " << std::endl;
    std::getline(std::cin, str);

    DeleteTimerQueueTimer(NULL, hNewTimer, NULL);
    return true;
}

int main()
{
    in_time = WaitingForImput();
    std::cout << "The string <" << str << "> received in time" << std::endl;

    // WaitForSingleObject(g_hExitEvent, 15000);
    // std::system("pause");
    return 0;
}
