#include <stdio.h>

void foo();

void foo1()
{
    printf("foo1 call in main.c");
}

int main()
{
    foo1();
}