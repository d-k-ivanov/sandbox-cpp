#include <iostream>
#include "hello.h"

void hello(){
    #ifdef NDEBUG
    std::cout << "Hello World Release! V2" <<std::endl;
    #else
    std::cout << "Hello World Debug! V2" <<std::endl;
    #endif
}
