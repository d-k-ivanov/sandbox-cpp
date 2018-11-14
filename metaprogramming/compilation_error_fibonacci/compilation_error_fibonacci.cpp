#include <iostream>

using namespace std;

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

template<int... I> struct int_vector {};
template<class IntVector, int i> struct push_back;

template<int... I, int i>
struct push_back<int_vector<I...>, i> {
  typedef int_vector<I..., i> type;
};

template<class IntVector, int n> struct at;

template<int i, int... I, int n>
struct at<int_vector<i, I...>, n> :
  at<int_vector<I...>, n - 1> {};

template<int i, int... I>
struct at<int_vector<i, I...>, 0> :
  std::integral_constant<int, i> {};

template<unsigned n> struct fibonaccis {
  typedef typename push_back<
    typename fibonaccis<n - 1>::type,
    fibonacci<n - 1>::value
  >::type type;
};

template<> struct fibonaccis<1>{
  typedef int_vector<> type;
};

int main() {
  typedef fibonaccis<20>::type f20;
  f20 f;
  f = 5;
}
