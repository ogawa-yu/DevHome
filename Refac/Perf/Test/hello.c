#include <stdio.h>
#include <stdlib.h>

static int fn(int a)
{
    return a + 3;
}

int main (int argc, char* argv[])
{
    printf("hello world!\n");
    
    //char* pt = fn;
    //char* mem = malloc(11);
    //memcpy(mem, pt, 11);
    //int (*fp)(int) = mem;
    //printf("%d\n", fp(3));

    return 0;
}
