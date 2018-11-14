#include <chrono>
#include <cmath>
#include <cstddef>
#include <cstdlib>
#include <iostream>
#include <numeric>
#include <vector>

using std::size_t;

template< typename T >
auto l2Norm( const std::vector<T>& vec )
{
  // Best common L2 Normalization
  // return std::sqrt( std::inner_product( vec.begin(), vec.end(), vec.begin(), T{}  ) );

  const size_t N( vec.size() );
  T norm{};
  for( size_t i=0UL; i<N; i+=2UL ) {
    norm += vec[i    ] * vec[i    ];
    norm += vec[i+1UL] * vec[i+1UL];
  }

  return std::sqrt( norm );
}

int main()
{
  const size_t N( 1000U );
  const size_t repetitions( 3U );
  const size_t steps( 1000000U );

  std::vector<double> a( N, 2.0 );

  double norm = l2Norm ( a );

  for( size_t rep=0U; rep<repetitions; ++rep )
  {
    std::chrono::time_point<std::chrono::high_resolution_clock> start, end;
    start = std::chrono::high_resolution_clock::now();

    for( size_t step=0U; step<steps; ++step )
    {
      norm = l2Norm( a );
    }

    end = std::chrono::high_resolution_clock::now();
    const std::chrono::duration<double> elapsedTime = end - start;

    if( norm == 42.0 ) { std::cerr << "\n ERROR DETECTED!\n\n"; }

    const double seconds( elapsedTime.count() );
    const double mflops( ( N * steps ) / ( 1E6 * seconds ) );

    std::cerr << "Rin " << (rep+1U) <<": " << seconds << "s (" << mflops << " MFlops)\n";

  }

}
