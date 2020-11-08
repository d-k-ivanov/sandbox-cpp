/*
 1  2  3  4  5  6  7  8  9 10
11 12 13 14 15 16 17 18 19 20
21 22 23 24 25 26 27 28 29 30
31 32 33 34 35 36 37 38 39 40
41 42 43 44 45 46 47 48 49 50
51 52 53 54 55 56 57 58 59 60
61 62 63 64 65 66 67 68 69 70
71 72 73 74 75 76 77 78 79 80
81 82 83 84 85 86 87 88 89 90
91 92 93 94 95 96 97 98 99 100

 1  X  Z  X  5  X  7  X  Z X
11 XX 13 XX ZZ XX 17 XX 19 XX
ZZ XX 23 XX 25 XX ZZ XX 29 XX
31 XX ZZ XX 35 XX 37 XX ZZ XX
41 XX 43 XX ZZ XX 47 XX 49 XX
ZZ XX 53 XX 55 XX ZZ XX 59 XX
61 XX ZZ XX 65 XX 67 XX ZZ XX
71 XX 73 XX ZZ XX 77 XX 79 XX
ZZ XX 83 XX 85 XX ZZ XX 89 XX
91 XX ZZ XX 95 XX 97 XX ZZ XXX
*/

#include <iostream>

int main()
{
    int n;
    std::cout << "Enter a numnber: ";
    std::cin >> n;

    bool sieve[n+1];

    for(int i = 2; i < n + 1; i++)
    {
        sieve[i] = true;
    }

    int x = 2;
    while (x*x <= n)
    {
        if (sieve[x])
        {
            for (int y = x*x; y <= n; y += x)
            {
                sieve[y] = false;
            }
        }
        x += 1;
    }

    uint32_t sep = 1;
    for (int i = 2; i < n + 1; i++)
    {
        if (sieve[i])
        {
            std::cout << i << '\t';
            if (sep % 10 == 0)
            {
                std::cout << '\n';
            }
            sep++;
        }
    }

    std::cout << std::endl;
    return 0;
}
