/*
 * practice_2_44.c
 * Practice problem 2.44 in book: CS APP 2e
 *
 *  Created on: Jul 2, 2015
 *      Author: adminuser
 */
#include <stdio.h>
#include <limits.h>

void evaluate_2_44()
{
    unsigned int ux;
    unsigned int uy;
    unsigned int usum;
    int y = -2;
    int x = -22;
    int sum = x + y;

    ux = x;
    uy = y;
    usum = ux + uy;
    printf("x+y == ux+uy : %d\n", (x+y) == (ux+uy));
    printf("(x > 0) || (x-1 < 0) : %d\n", ((x > 0) || (x-1 < 0)));
    x = INT_MIN;
    printf("x = %d, -x = %d\n", x, -x);
}
