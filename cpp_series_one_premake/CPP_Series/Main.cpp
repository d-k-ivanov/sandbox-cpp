#include "Main.h"

#include "Singleton.h"

// int main(int argc, char* argv[], char* env[])
int main()
{
    MainMemory::Main();
    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
