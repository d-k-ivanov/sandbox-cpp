//emcc.py -O3 --emrun -s WASM=1 -s SIDE_MODULE=1 -s EXPORTED_FUNCTIONS='["answer"]' -o 02_templates.wasm -v 02_templates.c
int _answer()
{
    return 42;
}
