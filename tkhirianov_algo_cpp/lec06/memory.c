#include <stdlib.h>
#include <stdio.h>

#ifdef _WIN32
#include <Windows.h>
#include "psapi.h"
#else
#include <unistd.h>
#include <limits.h>
#endif

void my_sleep(int sleep_in_ms)
{
    #ifdef _WIN32
    Sleep(sleep_in_ms);
    #else
    usleep(sleep_in_ms * 1000);  // usleep takes sleep time in us (1 millionth of a second)
    #endif
}

void print_memory_usage()
{
    #ifdef _WIN32
    PROCESS_MEMORY_COUNTERS info;
    GetProcessMemoryInfo(GetCurrentProcess(), &info, sizeof(info) ;
    printf("Memory used by me: %lu MB\n", (size_t) info.WorkingSetSize/1024/1024);
    #else
    long rss = 0L;
    FILE* fp = NULL;
    size_t WorkingSetSize = (size_t)0;
    if ( (fp = fopen( "/proc/self/statm", "r" )) == NULL )
        WorkingSetSize = (size_t)0L;      /* Can't open? */
    if ( fscanf( fp, "%*s%ld", &rss ) != 1 )
    {
        fclose( fp );
        WorkingSetSize = (size_t)0L;      /* Can't read? */
    }
    fclose( fp );
    WorkingSetSize = (size_t)rss * (size_t)sysconf( _SC_PAGESIZE);
    printf("Memory used by me: %lu MB\n", WorkingSetSize/1024/1024);
    #endif
}

int main()
{
    unsigned int max_value = UINT_MAX/40;
    printf("Max unsigned int: %u \n", max_value);
    // for (int i = 0; i < 10000000; i++) {
    // for (unsigned int i = 0; i < UINT_MAX/2; i++) {
    for (unsigned int i = 0; i < max_value; i++)
    {
        double *pd = (double *)malloc(10 * sizeof(double));

        if (pd != NULL)
        {
            for(double *p = pd; p < pd + 10; p++) // for pd to pd + 9*sizeof(double)
                *p = 0.0;
        }
        else
        {
            printf("Can't allocate memory.\n");
        }

        if (i % 100000 == 0)
            print_memory_usage();

        // my_sleep(100);
        // free(pd);
    }
    printf("Allocation done!\n");
    // print_memory_usage()
    my_sleep(5000);
    return 0;
}
