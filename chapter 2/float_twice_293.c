/*
 * float_twice_293.c
 * Homework problem 2.93 in book: CS APP 2e
 *
 *  Created on: Jul 13, 2015
 *      Author: adminuser
 */


#include <stdio.h>
#include <limits.h>

union repr {
    float       f;
    unsigned    u;
};

typedef unsigned    float_bits;

unsigned f2u(float f);

float_bits float_twice(float_bits f)
{
    unsigned sign = f & (1 << ((sizeof(float_bits) << 3) - 1));
    unsigned exp = f >> 23 & 0xFF;
    unsigned frac = f & ((1 << 23) - 1);

    // Calculate twice of denormalized value
    if (exp == 0) {
        // Just shift left the value by one
        return f << 1;
    } else if (exp != 0xFF) { // Calculate twice of normalized value
        // Increase exp by one
        exp += 1;
        // If the result overflows to infinity, we clear the fraction
        if (exp == 0xFF) {
            frac = 0;
        }
    } else {    // Calculate twice of infinity and Nan value
        // Just return f -> do nothing
    }

    return sign | exp << 23 | frac;
}

void test_float_twice_293()
{
    union repr r;
    unsigned orig;
    unsigned our;

    for (r.u = 0; 1; r.u++)
    {
        // Calculate float_absval
        orig = f2u(2 * r.f);
        our = float_twice(r.u);
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
