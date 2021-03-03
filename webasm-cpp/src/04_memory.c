// emcc.py -Os -s STANDALONE_WASM -s EXPORTED_FUNCTIONS='["_getFirstOffset", "_getSecondOffset", "_dot_product"]' -Wl,--no-entry -o 04_memory.wasm -v 04_memory.c
// emcc.py -Os -s STANDALONE_WASM -s EXPORTED_FUNCTIONS='["_getFirstOffset", "_getSecondOffset", "_dot_product"]' --no-entry -o 04_memory.wasm -v 04_memory.c

#define NUM_VALS 8

// int first_array[NUM_VALS] = {2, 2, 2, 2, 2, 2, 2, 2};
// int second_array[NUM_VALS] = {3, 3, 3, 3, 3, 3, 3, 3};
int first_array[NUM_VALS];
int second_array[NUM_VALS];

int dot_product()
{
    int product = 0;

    for(int i=0; i < NUM_VALS; i++)
    {
        product += first_array[i] * second_array[i];
    }

    // return product;
    return product;
}

int* getFirstOffset()
{
    return &first_array[0];
}

int* getSecondOffset()
{
    return &second_array[0];
}
