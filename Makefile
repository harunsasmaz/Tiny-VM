CPP=g++
CPP-FLAGS=-std=c++14 -O3

all: tvm

tvm: tvm.cpp
	${CPP} ${CPP-FLAGS} $^ -o $@

.PHONY:
clean:
	rm -f tvm