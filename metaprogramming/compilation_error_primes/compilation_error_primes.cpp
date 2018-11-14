#include <iostream>

using namespace std;

template<int n, int i>
struct is_prime0 : std::conditional<(n % i) == 0,
  std::false_type, is_prime0<n, i - 1>
>::type {};

template<int n>
struct is_prime0<n, 1> : std::true_type {};

template<int n>
struct is_prime : is_prime0<n, n / 2>{};

template<unsigned n>
struct find_prime : std::conditional<is_prime<n>::value,
  std::integral_constant<unsigned, n>,
  find_prime<n + 2>
>::type {};

template<unsigned n>
struct prime_at : find_prime<prime_at<n - 1>::value + 2>{};

template<>
struct prime_at<0> : std::integral_constant<unsigned, 2>{};

template<>
struct prime_at<1> : std::integral_constant<unsigned, 3>{};

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

template<unsigned n> struct primes {
  typedef typename push_back<
    typename primes<n - 1>::type,
    prime_at<n - 1>::value
  >::type type;
};

template<> struct primes<0>{
  typedef int_vector<> type;
};

int main() {
  //  typedef primes<20>::type p20;
  //  static_assert(at<p10, 4>::value == 11, "p4 == 11");
  //  static_assert(prime_at<5>::value == 13, "p5 == 13");

  typedef primes<20>::type p20;
  p20 p;
  p = 5;
}
