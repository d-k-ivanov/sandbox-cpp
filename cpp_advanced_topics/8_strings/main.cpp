#include <cstdio>
#include "UString.h"

void message(const char * s)
{
    puts(s);
    fflush(stdout);
}

int main()
{
    UString hello = "Hello, World!";
    message(hello);

    UString source = "this--/--is--/--a--/--string--/--to--/--be--/--split";
    UString match = "--/--";
    auto & rs = source.split(match);

    for(int i = 0; rs[i]; ++i)
        message(*rs[i]);

    return 0;
}
