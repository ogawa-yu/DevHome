#include <stdio.h>
#include <lexer.h>
#include <counter.h>

void counter(int counts[4]) {
    int ret;
    while ((ret = yylex()) != 0)
    {
    }

    counts[0] = fee_count;
    counts[1] = fie_count;
    counts[2] = foe_count;
    counts[3] = fum_count;
}

