/*
 * float_negate_291.c
 * Homework problem 2.91 in book: CS APP 2e
 *
 *  Created on: Jul 12, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <limits.h>

union repr {
    float       f;
    unsigned    u;
};

typedef unsigned float_bits;

unsigned f2u(float f)
{
    union repr r;
    r.f = f;
    return r.u;
}

float_bits float_negate(float_bits f)
{
    unsigned exp = f >> 23 & 0xFF;
    unsigned frac = f & ((1 << 23) - 1);
    return (exp == 0xFF && frac != 0) ? f : f ^ (1 << ((sizeof(float_bits) << 3) - 1));
}

void test_float_negate_291()
{
    union repr r;
    unsigned orig;
    unsigned our;

    for (r.u = 0; 1; r.u++) {
        orig = f2u(-r.f);
        our = float_negate(r.u);

        if (orig != our) {
            printf("First Mismatch:\n"
                    "%08X --> %08X(ori) , %08X(our)\n", r.u, orig, our);
            exit(1);
        }

        if (r.u == UINT_MAX) {
            break;
        }
    }

    printf("all match!");
}
