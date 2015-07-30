/*
 * evaluate_cast_expressions.c
 * Practice problem 2.21 in book: CS APP 2e
 *
 *  Created on: Jun 30, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <limits.h>
#include <float.h>

void evaluate_cast_exp()
{
    printf("-2147483647-1 == 2147483648U : %d\n", -2147483647-1 == 2147483648U);
    printf("-2147483647-1 < 2147483647 : %d\n", -2147483647-1 < 2147483647);
    printf("-2147483647-1U < 2147483647 : %d\n", -2147483647-1U < 2147483647);
    printf("-2147483647-1 < -2147483647 : %d\n", -2147483647-1 < -2147483647);
    printf("-2147483647-1U < -2147483647 : %d\n", -2147483647-1U < -2147483647);
}

void evaluate_test()
{
    if (-2147483648 > 0)     printf("positive\n");
    if (-2147483647 - 1 < 0) printf("negative\n");
    if (INT_MIN == -INT_MIN) printf("equal\n");
    if (FLT_MIN > 0)         printf("floating\n");

}
