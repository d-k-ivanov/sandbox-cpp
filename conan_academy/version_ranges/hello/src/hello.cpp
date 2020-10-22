#include <iostream>
#include "hello.h"

#define VERSION 0.2

void hello(){
    #ifdef NDEBUG
    std::cout << "Hello World Release! " << "Ver " << VERSION << std::endl;
    #else
    std::cout << "Hello World Debug! "   << "Ver " << VERSION << std::endl;
    #endif
}
