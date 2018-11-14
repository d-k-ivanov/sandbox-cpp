#include <iostream>

double mypow(double x, int N) {
  if (N < 0)
    return 1 / mypow(x, -N);
  else if (N == 0)
    return 1;
  else if (N % 2 == 0) {
    double  p = mypow(x, N / 2);
    return p * p;
  }
  else
    return mypow(x, N - 1) * x;
}

int main() {
  std::cout << " " << "\t: ";
  for(int x = 0 ; x <= 5; x++){
    std::cout << x << "\t";
  }
  std::cout << std::endl;
  for(int x = 0 ; x <= 10; x++){
    std::cout << x << "\t: ";
    for(int N = 0; N <= 5; N++){
      std::cout << mypow((double)x,N) << "\t";
    }
    std::cout << std::endl;
  }
}
