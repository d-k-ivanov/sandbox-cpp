.PHONY: all clang-check clang cmake clean clean-cmake

#uid := ${shell id -u ${USER}}
#gid := ${shell id -g ${USER}}

all:
	g++ -Wall -g -c sorting-merge.cpp -o sorting-merge.o
	g++ -Wall sorting-merge.o -o sorting-merge

clang-check:
	clang++ -fsyntax-only sorting-merge.cpp

clang:
	clang++ -Weverything -g -c sorting-merge.cpp -o sorting-merge.o
	clang++ -Weverything sorting-merge.o -o sorting-merge

cmake:
	cmake -H. -Bcmake-build-debug
	cmake --build cmake-build-debug -- -j3

clean:
	rm -rf cmake-build-debug || True
	rm -f sorting-merge sorting-merge.o || True
