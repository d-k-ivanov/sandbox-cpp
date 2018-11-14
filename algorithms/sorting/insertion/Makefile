.PHONY: all clang-check clang cmake clean clean-cmake

#uid := ${shell id -u ${USER}}
#gid := ${shell id -g ${USER}}

all:
	g++ -Wall -g -c sorting-insertion.cpp -o sorting-insertion.o
	g++ -Wall sorting-insertion.o -o sorting-insertion

clang-check:
	clang++ -fsyntax-only sorting-insertion.cpp

clang:
	clang++ -Weverything -g -c sorting-insertion.cpp -o sorting-insertion.o
	clang++ -Weverything sorting-insertion.o -o sorting-insertion

cmake:
	cmake -H. -Bcmake-build-debug
	cmake --build cmake-build-debug -- -j3

clean:
	rm -rf cmake-build-debug || True
	rm -f sorting-insertion sorting-insertion.o || True
