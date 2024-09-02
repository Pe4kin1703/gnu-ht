all: main.o src1.o
	gcc -o main main.o src1.o

main.o: main.c
	gcc -c main.c

src1.o: src1.c
	gcc -c src1.c

clean:
	rm *.o main