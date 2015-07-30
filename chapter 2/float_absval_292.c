/*
 * float_absval_292.c
 * Homework problem 2.92 in book: CS APP 2e
 *
 *  Created on: Jul 13, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <limits.h>
#include <math.h>

union repr {
    float       f;
    unsigned    u;
};

typedef unsigned float_bits;
unsigned f2u(float f);

float_bits float_absval(float_bits f)
{
    unsigned exp = (f >> 23) & 0xFF;
    unsigned frac = f & ((1 << 23) - 1);
    return (exp == 0xFF && frac != 0) ? f : f & ((1 << ((sizeof(float_bits) << 3) - 1)) - 1);
}

void test_float_absval_292()
{
    union repr r;
    unsigned orig;
    unsigned our;

    for (r.u = 0; 1; r.u++)
    {
        // Calculate float_absval
        orig = f2u(fabsf(r.f));
        our = float_absval(r.u);
        if (orig != our) {
            printf("First mismatch:\n"
                    "%08X --> %08X(orig), %08X(our)", r.u, orig, our);
            exit(1);
        }

        // Break if reach UINT_MAX
        if (r.u == UINT_MAX)
            break;
    }

    printf("all match!");
}
