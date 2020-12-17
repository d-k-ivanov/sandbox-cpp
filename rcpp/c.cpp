#include <iostream>

#include <Rcpp.h>
#include <RInside.h>

int main(int argc, char *argv[]) {
    using namespace std;
    cout << "Hello, CPP World!\n";

    RInside R(argc, argv);
    Rcpp::CharacterVector a("Hello, R World!\n");
    print(a);

    exit(0);
}
