
SRC = main.c src1.c
OBJ = $(SRC:.c=.o)

all: main

main: $(OBJ)
	gcc -o $@ $<

%.o: %.c
	gcc -o $@ -c $<

clean:
	rm *.o main

