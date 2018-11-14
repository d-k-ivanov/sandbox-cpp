#include <iostream>

using namespace std;

template<unsigned N>
struct factorial
{
  static const unsigned value = N * factorial<N - 1>::value;
};

template<>
struct factorial<0>
{
  static const unsigned value = 1;
};

int main()
{
  const unsigned f5 = factorial<5>::value; // 120
  cout << f5 << endl;
  const unsigned f_max = factorial<12>::value; // 479001600
  cout << f_max << endl;
}
