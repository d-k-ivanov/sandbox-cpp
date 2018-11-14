#include <iostream>

using namespace std;

template<int N, typename T>
typename enable_if<(N < 0), T>::type
  mypow(T x){ return 1 / mypow<-N>(x); }

template<int N, typename T>
typename enable_if<(N == 0), T>::type
  mypow(T x){ return 1; }

template<int N, typename T>
typename enable_if<(N > 0) && (N % 2 == 0), T>::type
  mypow(T x){ T p = mypow<N / 2>(x); return p * p; }

template<int N, typename T>
typename enable_if<(N > 0) && (N % 2 == 1), T>::type
  mypow(T x){ return mypow<N - 1>(x) * x; }

int main() {
  std::cout << " " << "\t: ";
  for(int x = 0 ; x <= 5; x++){
    std::cout << x << "\t";
  }

  std::cout << std::endl;
  for(int x = 0 ; x <= 10; x++){
    std::cout << x << "\t: "
              << mypow<0>((double)x) << "\t"
              << mypow<1>((double)x) << "\t"
              << mypow<2>((double)x) << "\t"
              << mypow<3>((double)x) << "\t"
              << mypow<4>((double)x) << "\t"
              << mypow<5>((double)x) << std::endl;
  }

}
