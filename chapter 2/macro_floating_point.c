/*
 * macro_floating_point.c
 * Practice problem 2.53 in book: CS APP 2e
 *
 *  Created on: Jul 6, 2015
 *      Author: adminuser
 */

#include <stdio.h>

#define POS_INFINITY    (1e400)
#define NEG_INFINITY    (-1e400)
#define NEG_ZERO    (-1.0/POS_INFINITY)

void macro_floating_point()
{
    printf("POS_INFINITY = %f\n", POS_INFINITY);
    printf("NEG_INFINITY = %f\n", NEG_INFINITY);
    printf("NEG_ZERO = %f\n", NEG_ZERO);
}
