.PHONY: all clean

#uid := ${shell id -u ${USER}}
#gid := ${shell id -g ${USER}}

all:
	g++ -Wall -g -c linear-search.cpp -o linear-search.o
	g++ -Wall linear-search.o -o linear-search

clean:
	rm linear-search linear-search.o || True
