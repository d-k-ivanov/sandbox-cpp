#include <cstdio>
#include <cstdlib>
#include "UString.h"

constexpr const char * csvprimes =  "2, 3, 5, 7, 11, 13, 17, 19, 23, "
                                    "29, 31, 37, 41, 43, 47, 53, 59, "
                                    "61, 67, 71, 73, 79, 83, 89, 97, "
                                    "101, 103, 107, 109, 113, 127, 131, "
                                    "137, 139, 149, 151, 157, 163, 167, "
                                    "173, 179, 181, 191, 193, 197, 199, "
                                    "211, 223, 227, 229, 233, 239, 241, "
                                    "251, 257, 263, 269, 271";

void parray (unsigned long * array, size_t len)
{
    printf("printing %zd unsigned long values:\n", len);

    for(unsigned i = 0; i < len; ++i)
        printf("%ld -> %s\n", array[i], typeid(array[i]).name());

    puts("");
}

int main()
{
    // split the string on commas
    UString csvbwstr = csvprimes;
    auto & split_pointer = csvbwstr.split(',');
    size_t primecount = csvbwstr.split_count();

    // array of unsigned long ints for results
    unsigned long * primes = new unsigned long[primecount]();

    // populate the array
    for(unsigned i = 0; i < primecount; ++i)
    {
        UString & numstr = *split_pointer[i];
        primes[i] = strtoul(numstr.trim(), nullptr, 10);
    }

    parray(primes, primecount);
    delete [] primes;

    return 0;
}
