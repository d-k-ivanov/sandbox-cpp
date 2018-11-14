#include <iostream>

using namespace std;

template<unsigned N>
struct factorial {
  static const unsigned value = N * factorial<N - 1>::value;
};

template<>
struct factorial<0> {
  static const unsigned value = 1;
};

template<unsigned N, unsigned K>
struct C {
  static const unsigned value = factorial<N>::value / factorial<K>::value / factorial<N-K>::value;
};

int main() {
  cout << "Binomial coefficients of ^2:" << endl;
  const unsigned c21 = C<2, 0>::value;
  const unsigned c22 = C<2, 1>::value;
  const unsigned c23 = C<2, 2>::value;
  cout << "| c1: " << c21 << " | c2: " << c22 << " ! c3:" << c23 << " |" << endl;

  cout << "Binomial coefficients of ^3:" << endl;
  const unsigned c31 = C<3, 0>::value;
  const unsigned c32 = C<3, 1>::value;
  const unsigned c33 = C<3, 2>::value;
  const unsigned c34 = C<3, 3>::value;
  cout << "| c1: " << c31 << " | c2: " << c32 << " ! c3:" << c33 << " ! c3:" << c34 << " |" << endl;

  cout << "Binomial coefficients of ^4:" << endl;
  const unsigned c41 = C<4, 0>::value;
  const unsigned c42 = C<4, 1>::value;
  const unsigned c43 = C<4, 2>::value;
  const unsigned c44 = C<4, 3>::value;
  const unsigned c45 = C<4, 4>::value;
  cout << "| c1: " << c41 << " | c2: " << c42 << " ! c3:" << c43 << " | c4: " << c44 << " | c5: " << c45 << endl;
}
