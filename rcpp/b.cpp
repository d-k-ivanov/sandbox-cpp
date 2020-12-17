#include <iostream>

#include <Rcpp.h>
#include <RInside.h>

int main(int argc, char *argv[]) {
    using namespace std;
    cout << "Hi\n";

    RInside R(argc, argv);
    R["txt"] = "Hello, world!\n";
    R.parseEvalQ("cat(txt)");
    exit(0);
}
