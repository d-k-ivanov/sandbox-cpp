#include <iostream>
#include <iomanip>

using namespace std;

template<unsigned N>
struct factorial {
  static const unsigned value = N * factorial<N - 1>::value;
};

template<>
struct factorial<0> {
  static const unsigned value = 1;
};

template<unsigned alpha, unsigned beta, unsigned gamma>
struct rev_monomial_3d {
  static const unsigned value =
    factorial<alpha + beta + gamma + 3>::value /
     (factorial<alpha>::value * factorial<beta>::value * factorial<gamma>::value);
};

int main() {
  cout << "Integral of {2,2,2}: ";
  const unsigned m1 = rev_monomial_3d<2, 2, 2>::value;
  double mf1 = 1.0 / m1;
  // memcpy(&mf1, &m1, sizeof(int));
  cout <<  fixed << setw(11) << setprecision(10) << mf1 << endl;

  cout << "Integral of {1,3,5}: ";
  const unsigned m2 = rev_monomial_3d<1, 3, 5>::value;
  double mf2 = 1.0 / m2;
  // memcpy(&mf2, &m2, sizeof(int));
  cout << fixed << setw(11) << setprecision(10) <<  mf2 << endl;

  cout << "Integral of {1,1,1}: ";
  const unsigned m3 = rev_monomial_3d<1, 1, 1>::value;
  double mf3 = 1.0 / m3;
  // memcpy(&mf3, &m1, sizeof(int));
  cout << fixed << setw(11) << setprecision(10) << mf3 << endl;
}
