OBJ = main.o src1.o src2.o src3.o

all: main

main: $(OBJ)
	gcc -o $@ $^

main.o: main.c
	gcc -o $@ -c $<

.PHONY: clean

clean: 
	rm main $(OBJ)

include make1.mk

include make2.mk

include make3.mk
