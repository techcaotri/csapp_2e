/*
 * conversion_floating_point.c
 * Practice problem 2.54 in book: CS APP 2e
 *
 *  Created on: Jul 6, 2015
 *      Author: adminuser
 */

#include <limits.h>

void conversion_floating_point()
{
    int x = 16777217;   // 2^(23+1) + 1
    float f = 1e30;
    double d = 1.0l;

    printf("x == (int)(double) x : %d\n", x == (int)(double) x);
    printf("%d\n", x);
    printf("%f\n", (float)x);
    printf("x == (int)(float) x : %d\n", x == (int)(float) x);
    printf("d == (double)(float) d : %d\n", d == (double)(float) d);
    printf("f == (float)(double) f : %d\n", f == (float)(double) f);
    printf("f == -(-f) : %d\n", f == -(-f));
    printf("1.0/2 == 1/2.0 : %d\n", 1.0/2 == 1/2.0);
    printf("d*d >= 0.0 : %d\n", d*d >= 0.0);
    printf("(f+d)-f == d : %d\n", (f+d)-f == d);
}
