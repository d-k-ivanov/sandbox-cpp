#include "Main.h"

#include "Singleton.h"

// int main(int argc, char* argv[], char* env[])
int main()
{
    Singleton::Hello();
    // std::system("pause");  // NOLINT(concurrency-mt-unsafe)
    return 0;
}
