/*
 * test_exp_281.c
 * Homework problem 2.81 in book: CS APP 2e
 *
 *  Created on: Jul 10, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <limits.h>

void test_exp_281()
{
    int x = INT_MAX - 1;
    int y = INT_MIN + 3;

    unsigned ux = (unsigned) x;
    unsigned uy = (unsigned) y;

    printf("((x+y)<<4) + y-x == 17*y+15*x : %d\n", ((x+y)<<4) + y-x == 17*y+15*x);

    x = INT_MIN;
    y = -1;
    printf("~x+~y+1 == ~(x+y) : %d\n", ~x+~y+1 == ~(x+y));

    x = 3;
    y = INT_MIN;

    ux = (unsigned) x;
    uy = (unsigned) y;

    printf("ux - uy == -(unsigned) (y-x) : %d\n", (ux - uy) == -(unsigned) (y-x));

    x = 9;
    printf("((x >> 2) << 2) <= x : %d\n", ((x >> 2) << 2) <= x);

}
