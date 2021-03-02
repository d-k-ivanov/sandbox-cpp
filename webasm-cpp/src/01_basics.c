#include <stdio.h>

/* INFO

# Compile
    emcc.py
        -v 01_basics.c
        -o <filename>.html  --> generate html file
        -o <filename>.js    --> generate js file
        -O level
        -g                  --> [debug info]
        --emrun             --> emrun output
        -s option=value

# Options
    -s WASM=1                               --> generate web assembly
    -s STANDALONE_WASM=1 -s WASM_BIGINT=1   --> create standalone app
    -s EXPORTED_FUNCTIONS='[...]'           --> list of functions signatures to export
    -s SIDE_MODULE=1                        --> create dynamic library

*/

int main()
{
    printf("Hello, World!\n");
    return 0;
}
