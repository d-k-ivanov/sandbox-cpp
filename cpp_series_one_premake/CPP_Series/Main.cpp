#include "Main.h"

// int main(int argc, char* argv[], char* env[])
int main()
{
    MainProfilingThreads::Main();
    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
