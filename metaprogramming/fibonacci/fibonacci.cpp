#include <iostream>

template<unsigned N>
struct fibonacci
{
  static const unsigned value = fibonacci<N - 1>::value + fibonacci<N - 2>::value;
};

template<>
struct fibonacci<1>
{
  static const unsigned value = 1;
};

template<>
struct fibonacci<2>
{
  static const unsigned value = 1;
};

int main()
{
  const unsigned f01 = fibonacci<1>::value;
  const unsigned f02 = fibonacci<2>::value;
  const unsigned f03 = fibonacci<3>::value;
  const unsigned f04 = fibonacci<4>::value;
  const unsigned f05 = fibonacci<5>::value;
  const unsigned f06 = fibonacci<6>::value;
  const unsigned f07 = fibonacci<7>::value;
  const unsigned f08 = fibonacci<8>::value;
  const unsigned f09 = fibonacci<9>::value;
  const unsigned f10 = fibonacci<10>::value;
  const unsigned f11 = fibonacci<11>::value;
  const unsigned f12 = fibonacci<12>::value;
  const unsigned f13 = fibonacci<13>::value;
  const unsigned f14 = fibonacci<14>::value;
  const unsigned f15 = fibonacci<15>::value;
  const unsigned f16 = fibonacci<16>::value;
  const unsigned f17 = fibonacci<17>::value;
  const unsigned f18 = fibonacci<18>::value;
  const unsigned f19 = fibonacci<19>::value;
  const unsigned f20 = fibonacci<20>::value;
  std::cout
    << f01 << " "
    << f02 << " "
    << f03 << " "
    << f04 << " "
    << f05 << " "
    << f06 << " "
    << f07 << " "
    << f08 << " "
    << f09 << " "
    << f10 << " "
    << f11 << " "
    << f12 << " "
    << f13 << " "
    << f14 << " "
    << f15 << " "
    << f16 << " "
    << f17 << " "
    << f18 << " "
    << f19 << " "
    << f20 << " "
    << std::endl;
}
