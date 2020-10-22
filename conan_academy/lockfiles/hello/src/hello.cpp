#include <iostream>
#include "hello.h"

void hello(){
    #ifdef NDEBUG
    std::cout << "Hello World Release! VER 0.2" <<std::endl;
    #else
    std::cout << "Hello World Debug! VER 0.2" <<std::endl;
    #endif
}
