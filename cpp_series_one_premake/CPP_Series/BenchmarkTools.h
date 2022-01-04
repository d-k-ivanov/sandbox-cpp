#pragma once

#if defined(_MSC_VER)
#include <intrin.h>  // for _ReadWriteBarrier
#endif

namespace BenchmarkTools
{
    namespace internal
    {
        void UseCharPointer(char const volatile*) {}
    }

    #if defined(__GNUC__) || defined(__clang__)
        #define BENCHMARK_ALWAYS_INLINE __attribute__((always_inline))
        #define BENCHMARK_NOEXCEPT noexcept
        #define BENCHMARK_NOEXCEPT_OP(x) noexcept(x)
    #elif defined(_MSC_VER) && !defined(__clang__)
        #define BENCHMARK_ALWAYS_INLINE __forceinline

        #if _MSC_VER >= 1900
            #define BENCHMARK_NOEXCEPT noexcept
            #define BENCHMARK_NOEXCEPT_OP(x) noexcept(x)
        #else
            #define BENCHMARK_NOEXCEPT
        #define BENCHMARK_NOEXCEPT_OP(x)
        #endif

        #define __func__ __FUNCTION__
    #else
        #define BENCHMARK_ALWAYS_INLINE
        #define BENCHMARK_NOEXCEPT
        #define BENCHMARK_NOEXCEPT_OP(x)
    #endif

    #if (!defined(__GNUC__) && !defined(__clang__)) || defined(__pnacl__) || defined(__EMSCRIPTEN__)
        #define BENCHMARK_HAS_NO_INLINE_ASSEMBLY
    #endif


    // Force the compiler to flush pending writes to global memory. Acts as an effective read/write barrier
    #ifdef BENCHMARK_HAS_CXX11
    inline BENCHMARK_ALWAYS_INLINE void ClobberMemory()
    {
        std::atomic_signal_fence(std::memory_order_acq_rel);
    }
    #endif

    // The SuppressOptimization(...) function can be used to prevent a value or
    // expression from being optimized away by the compiler. This function is
    // intended to add little to no overhead.
    // See: https://youtu.be/nXaxk27zwlk?t=2441
    #ifndef BENCHMARK_HAS_NO_INLINE_ASSEMBLY
    template <class Tp>
    inline BENCHMARK_ALWAYS_INLINE void SuppressOptimization(Tp const& value)
    {
        asm volatile("" : : "r,m"(value) : "memory");
    }

    template <class Tp>
    inline BENCHMARK_ALWAYS_INLINE void SuppressOptimization(Tp& value)
    {
        #if defined(__clang__)
        asm volatile("" : "+r,m"(value) : : "memory");
        #else
        asm volatile("" : "+m,r"(value) : : "memory");
        #endif
    }

    #ifndef BENCHMARK_HAS_CXX11
    inline BENCHMARK_ALWAYS_INLINE void ClobberMemory()
    {
        asm volatile("" : : : "memory");
    }
    #endif

    #elif defined(_MSC_VER)
    template <class Tp>
    inline BENCHMARK_ALWAYS_INLINE void SuppressOptimization(const Tp& value)
    {
        internal::UseCharPointer(&reinterpret_cast<const volatile char&>(value));
        _ReadWriteBarrier();
    }

    #ifndef BENCHMARK_HAS_CXX11
    inline BENCHMARK_ALWAYS_INLINE void ClobberMemory()
    {
        _ReadWriteBarrier();
    }
    #endif
    #else
    template <class Tp>
    inline BENCHMARK_ALWAYS_INLINE void SuppressOptimization(Tp const& value)
    {
        internal::UseCharPointer(&reinterpret_cast<char const volatile&>(value));
    }
    #endif
}
