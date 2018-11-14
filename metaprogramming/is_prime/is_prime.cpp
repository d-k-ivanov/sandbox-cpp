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

int main() {
  cout << "1:\t" << is_prime<1>() << endl;
  cout << "2:\t" << is_prime<2>() << endl;
  cout << "3:\t" << is_prime<3>() << endl;
  cout << "4:\t" << is_prime<4>() << endl;
  cout << "5:\t" << is_prime<5>() << endl;
  cout << "6:\t" << is_prime<6>() << endl;
  cout << "7:\t" << is_prime<7>() << endl;
  cout << "8:\t" << is_prime<8>() << endl;
  cout << "9:\t" << is_prime<9>() << endl;
  cout << "10:\t" << is_prime<10>() << endl;
  cout << "11:\t" << is_prime<11>() << endl;
  cout << "12:\t" << is_prime<12>() << endl;
  cout << "13:\t" << is_prime<13>() << endl;
  cout << "14:\t" << is_prime<14>() << endl;
  cout << "15:\t" << is_prime<15>() << endl;
  cout << "16:\t" << is_prime<16>() << endl;
  cout << "17:\t" << is_prime<17>() << endl;
  cout << "18:\t" << is_prime<18>() << endl;
  cout << "19:\t" << is_prime<19>() << endl;
  cout << "20:\t" << is_prime<20>() << endl;
  cout << "21:\t" << is_prime<21>() << endl;
  cout << "22:\t" << is_prime<22>() << endl;
  cout << "23:\t" << is_prime<23>() << endl;
  cout << "24:\t" << is_prime<24>() << endl;
  cout << "25:\t" << is_prime<25>() << endl;
  cout << "26:\t" << is_prime<26>() << endl;
  cout << "27:\t" << is_prime<27>() << endl;
  cout << "28:\t" << is_prime<28>() << endl;
  cout << "29:\t" << is_prime<29>() << endl;
  cout << "30:\t" << is_prime<30>() << endl;
  cout << "31:\t" << is_prime<31>() << endl;
  cout << "32:\t" << is_prime<32>() << endl;
  cout << "33:\t" << is_prime<33>() << endl;
  cout << "34:\t" << is_prime<34>() << endl;
  cout << "35:\t" << is_prime<35>() << endl;
  cout << "36:\t" << is_prime<36>() << endl;
  cout << "37:\t" << is_prime<37>() << endl;
  cout << "38:\t" << is_prime<38>() << endl;
  cout << "39:\t" << is_prime<39>() << endl;
  cout << "40:\t" << is_prime<40>() << endl;
  cout << "41:\t" << is_prime<41>() << endl;
  cout << "42:\t" << is_prime<42>() << endl;
  cout << "43:\t" << is_prime<43>() << endl;
  cout << "44:\t" << is_prime<44>() << endl;
  cout << "45:\t" << is_prime<45>() << endl;
  cout << "46:\t" << is_prime<46>() << endl;
  cout << "47:\t" << is_prime<47>() << endl;
  cout << "48:\t" << is_prime<48>() << endl;
  cout << "49:\t" << is_prime<49>() << endl;
  cout << "50:\t" << is_prime<50>() << endl;
  cout << "51:\t" << is_prime<51>() << endl;
  cout << "52:\t" << is_prime<52>() << endl;
  cout << "53:\t" << is_prime<53>() << endl;
  cout << "54:\t" << is_prime<54>() << endl;
  cout << "55:\t" << is_prime<55>() << endl;
  cout << "56:\t" << is_prime<56>() << endl;
  cout << "57:\t" << is_prime<57>() << endl;
  cout << "58:\t" << is_prime<58>() << endl;
  cout << "59:\t" << is_prime<59>() << endl;
  cout << "60:\t" << is_prime<60>() << endl;
  cout << "61:\t" << is_prime<61>() << endl;
  cout << "62:\t" << is_prime<62>() << endl;
  cout << "63:\t" << is_prime<63>() << endl;
  cout << "64:\t" << is_prime<64>() << endl;
  cout << "65:\t" << is_prime<65>() << endl;
  cout << "66:\t" << is_prime<66>() << endl;
  cout << "67:\t" << is_prime<67>() << endl;
  cout << "68:\t" << is_prime<68>() << endl;
  cout << "69:\t" << is_prime<69>() << endl;
  cout << "70:\t" << is_prime<70>() << endl;
  cout << "71:\t" << is_prime<71>() << endl;
  cout << "72:\t" << is_prime<72>() << endl;
  cout << "73:\t" << is_prime<73>() << endl;
  cout << "74:\t" << is_prime<74>() << endl;
  cout << "75:\t" << is_prime<75>() << endl;
  cout << "76:\t" << is_prime<76>() << endl;
  cout << "77:\t" << is_prime<77>() << endl;
  cout << "78:\t" << is_prime<78>() << endl;
  cout << "79:\t" << is_prime<79>() << endl;
  cout << "80:\t" << is_prime<80>() << endl;
  cout << "81:\t" << is_prime<81>() << endl;
  cout << "82:\t" << is_prime<82>() << endl;
  cout << "83:\t" << is_prime<83>() << endl;
  cout << "84:\t" << is_prime<84>() << endl;
  cout << "85:\t" << is_prime<85>() << endl;
  cout << "86:\t" << is_prime<86>() << endl;
  cout << "87:\t" << is_prime<87>() << endl;
  cout << "88:\t" << is_prime<88>() << endl;
  cout << "89:\t" << is_prime<89>() << endl;
  cout << "90:\t" << is_prime<90>() << endl;
  cout << "91:\t" << is_prime<91>() << endl;
  cout << "92:\t" << is_prime<92>() << endl;
  cout << "93:\t" << is_prime<93>() << endl;
  cout << "94:\t" << is_prime<94>() << endl;
  cout << "95:\t" << is_prime<95>() << endl;
  cout << "96:\t" << is_prime<96>() << endl;
  cout << "97:\t" << is_prime<97>() << endl;
  cout << "98:\t" << is_prime<98>() << endl;
  cout << "99:\t" << is_prime<99>() << endl;
  cout << "100:\t" << is_prime<100>() << endl;
}
