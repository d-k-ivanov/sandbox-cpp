PROJ=webasm-cpp

ifeq ($(OS),Windows_NT)
	RM=del
else
	RM=rm
endif

CC=emcc.py
CFLAGS=-O3 --emrun -s WASM=1

LESSON_1=01_basics
LESSON_2=02_templates

$(LESSON_1).html: $(LESSON_1).c
	$(CC) $(CFLAGS) -s STANDALONE_WASM=1 -s WASM_BIGINT=1 -o $@ -v $^

$(LESSON_2).wasm: $(LESSON_2).c
	$(CC) $(CFLAGS) -s SIDE_MODULE=1 -s EXPORTED_FUNCTIONS='["answer"]' -o $@ -v $^

.PHONY: clean
clean:
	$(RM) $(LESSON_1).html $(LESSON_1).js $(LESSON_1).wasm