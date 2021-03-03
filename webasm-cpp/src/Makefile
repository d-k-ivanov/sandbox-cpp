PROJ=webasm-cpp

ifeq ($(OS),Windows_NT)
	RM=del
else
	RM=rm
endif

CC=emcc.py
CFLAGS=-Os --emrun -s WASM=1

LESSON_1=01_basics
LESSON_2=02_templates
LESSON_3=03_imports
LESSON_4=04_memory
LESSON_5=05_quicksort

$(LESSON_1).html: $(LESSON_1).c
	$(CC) $(CFLAGS) -s STANDALONE_WASM=1 -s WASM_BIGINT=1 -o $@ -v $^

$(LESSON_2).wasm: $(LESSON_2).c
	$(CC) $(CFLAGS) -s SIDE_MODULE=1 -s EXPORTED_FUNCTIONS='["answer"]' -o $@ -v $^

$(LESSON_3).wasm: $(LESSON_3).c
	$(CC) $(CFLAGS) -s SIDE_MODULE=1 -s EXPORTED_FUNCTIONS='["print_value"]' -o $@ -v $^

$(LESSON_4).wasm: $(LESSON_4).c
	$(CC) $(CFLAGS) -s STANDALONE_WASM -s EXPORTED_FUNCTIONS='["_getFirstOffset", "_getSecondOffset", "_dot_product"]' --no-entry -o $@ -v $^

$(LESSON_5).wasm: $(LESSON_5).c
	$(CC) $(CFLAGS) -s STANDALONE_WASM -s EXPORTED_FUNCTIONS='["_getFirstOffset", "_getSecondOffset", "_dot_product"]' --no-entry -o $@ -v $^

.PHONY: clean
clean:
	$(RM) $(LESSON_1).html $(LESSON_1).js $(LESSON_1).wasm
	$(RM) $(LESSON_2).wasm
	$(RM) $(LESSON_3).wasm
	$(RM) $(LESSON_4).wasm
	$(RM) $(LESSON_5).wasm
