OBJ = main.o src1.o src2.o src3.o

all: main 



ifdef USE_INCLUDE
    ifeq ($(USE_INCLUDE), yes)
        include make1.mk
        include make2.mk
        include make3.mk
        $(info Включены make1.mk, make2.mk, make3.mk через include)
    else
	$(MAKE) call-makefiles
        $(info USE_INCLUDE false)
    endif
else
	$(MAKE) call-makefiles
    $(info aboba)

endif


call-makefiles:
	echo "Running Makefiles via -f parameter"
	make -f make1.mk
	make -f make2.mk
	make -f make3.mk




main: $(OBJ)
	gcc -o $@ $^

main.o: main.c
	gcc -o $@ -c $<

.PHONY: clean

clean: 
	rm main $(OBJ)

clean-all: clean
