#include "Main.h"
#include "Log.h"
#include "Math.h"

#include <iostream>

#ifdef _WIN32
#include <Windows.h>
#endif

// int main(int argc, char* argv[], char* env[])
int main()
{
    int a = 5;
    int b = 8;
    a++;
    const char* str = "Hello World!";


    for (int i = 0; i < strlen(str); ++i)
    {
        const char c = str[i];
        std::cout << c << std::endl;

    }

    Log(str);
    const int res = Multiply(a, b);
    std::cout << res << std::endl;
    // std::cin.get();

    // std::system("pause");
    return 0;
}
