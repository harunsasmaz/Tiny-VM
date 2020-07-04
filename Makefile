CPP=g++
CPP-FLAGS=-std=c++14 -O3

all: tvm

lc3-alt: tvm.cpp
	${CPP} ${CPP-FLAGS} $^ -o $@

.PHONY:
clean:
	rm -f tvm