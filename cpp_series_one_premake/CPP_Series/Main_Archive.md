# Main.cpp Archive

```cpp
int main()
{
    int a = 5;
    int b = 8;
    a++;
    b++;
    const char* str = "Hello World!";
    const char* ptr = nullptr;

    if(str)
        Log(str);

    if (ptr)
        Log(str);
    else
        if (ptr)
            Log(str);
    else
        Log("nullptr");


    for (int i = 0; i < strlen(str); ++i)
    {
        const char c = str[i];
        std::cout << c << std::endl;

    }

    const int res = Multiply(a, b);
    std::cout << res << std::endl;
    // std::cin.get();

    // std::system("pause");
    return 0;
}
```
