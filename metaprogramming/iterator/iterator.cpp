#include <iostream>
#include <numeric>

// Original:
// template<typename IT, typename T>
// T accumulate(IT first, IT last, T init);

template<typename IT>
struct get_value_type {
  typedef typename IT::value_type type;
};

template<typename T>
struct get_value_type<T*>{
  typedef T type;
};

template<typename T>
struct get_value_type<const T*>{
  typedef T type;
};

template<typename IT, typename T>
typename get_value_type<IT>::type my_accumulate(IT first, IT last, T init) {
// typename std::iterator_traits<IT>::value_type my_accumulate(IT first, IT last, T init) {
  typename get_value_type<IT>::type result = init;
  for (; first != last; ++first)
    result += *first;
  return result;
}

int main() {
  double a[3] = { 1.23, 2.34, 3.45 };
  double sum1 = std::accumulate(a, a + 3, 0);
  std::cout << "Wrong SUM: " << sum1 << std::endl;

  double sum2 = std::accumulate(a, a + 3, 0.);
  std::cout << "Correct SUM: " << sum2 << std::endl;

  std::cout << "**************************************************" << std::endl;

  double sum3 = my_accumulate(a, a + 3, 0);
  std::cout << "Wrong SUM?: " << sum3 << std::endl;

  double sum4 = my_accumulate(a, a + 3, 0.);
  std::cout << "Correct SUM: " << sum3 << std::endl;
}
