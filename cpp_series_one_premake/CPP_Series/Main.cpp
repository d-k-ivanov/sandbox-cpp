#include "Main.h"

// int main(int argc, char* argv[], char* env[])
int main()
{
    MainThreads::Main();
    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
