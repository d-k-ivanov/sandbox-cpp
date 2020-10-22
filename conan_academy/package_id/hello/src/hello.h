#pragma once

#ifdef WIN32
  #define HELLO_EXPORT __declspec(dllexport)
#else
  #define HELLO_EXPORT
#endif

#define VERSION "v1.1"

inline void hello(){
    #ifdef NDEBUG
    std::cout << "Hello World Release! " << VERSION << std::endl;
    #else
    std::cout << "Hello World Debug! "   << VERSION<< std::endl;
    #endif
}
