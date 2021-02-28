#include <locale>
#include <cstring>
#include <algorithm>

constexpr size_t _maxlen = 128;

class ftitle
{
    char lastc;
public:
    ftitle() : lastc(0) {}
    char operator() (const char & c);
};

char ftitle::operator() (const char & c)
{
    const char r = (lastc == ' ' || lastc == 0) ?  toupper(c) :  tolower(c);
    lastc = c;
    return r;
}

// static size_t strnlen(const char* s, size_t maxlen)
// {
//     for (size_t i=0; i < maxlen ; i++ )
//     {
//         if (s[i] == '\0')
//             return i;
//     }
//     return maxlen;
// }

// size_t strnlen(const char *str, size_t max)
// {
//     const char *end = static_cast<const char*>(memchr(str, 0, max));
//     return end ? (size_t)(end - str) : max;
// }

int main()
{
    char s[] = "lorem ipsum dolor sit amet, nec ea voluptua neglegentur vituperatoribus.";

    // std::transform(s, s + strnlen(s, _maxlen), s, ftitle());

    char lastc = 0;
    std::transform(s, s + strnlen(s, _maxlen), s, [&lastc] (const char & c) -> char {
        const char r = (lastc == ' ' || lastc == 0) ? toupper(c) : tolower(c);
        lastc = c;
        return r;
    });

    // More examples
    // All variable by copy
    // 'lastc': a by copy capture cannot be modified in a non-mutable lambda - bad practice
    // std::transform(s, s + strnlen(s, _maxlen), s, [=] (const char & c) mutable -> char {
    //     const char r = (lastc == ' ' || lastc == 0) ? toupper(c) : tolower(c);
    //     lastc = c;
    //     return r;
    // });
    // All variables by reference
    // std::transform(s, s + strnlen(s, _maxlen), s, [&] (const char & c) -> char {
    //     const char r = (lastc == ' ' || lastc == 0) ? toupper(c) : tolower(c);
    //     lastc = c;
    //     return r;
    // });

    puts(s);

    return 0;
}
