extern int print_value(int x);

// emcc.py -O3 --emrun -s WASM=1 -s SIDE_MODULE=1 -s EXPORTED_FUNCTIONS=["call_func"] -o 03_imports.wasm -v 03_imports.c
void call_func(int input)
{
    print_value(input * 3);
}
