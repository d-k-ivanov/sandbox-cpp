// emcc.py -Os -s STANDALONE_WASM -s EXPORTED_FUNCTIONS='["_getOffset", "_quicksort"]' -Wl,--no-entry -o 05_quicksort.wasm -v 05_quicksort.c
// emcc.py -Os -s STANDALONE_WASM -s EXPORTED_FUNCTIONS='["_getOffset", "_quicksort"]' --no-entry -o 05_quicksort.wasm -v 05_quicksort.c

int input[251];

void quicksort(int first,int last)
{
    int i, j, pivot, temp;

    if(first<last){
        pivot=first;
        i=first;
        j=last;

        while(i < j)
        {
            while(input[i] <= input[pivot] && i < last)
                i++;

            while(input[j] > input[pivot])
                j--;

            if(i < j)
            {
                temp=input[i];
                input[i]=input[j];
                input[j]=temp;
            }
        }

        temp=input[pivot];
        input[pivot]=input[j];
        input[j]=temp;
        quicksort(first, j-1);
        quicksort(j+1, last);
   }
}

int* getOffset()
{
    return &input[0];
}
