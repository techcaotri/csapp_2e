/*
 * float_f2i_295.c
 * Homework problem 2.95 in book: CS APP 2e
 *
 *  Created on: Jul 14, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <limits.h>

#define FINT_MAX_PLUS_1    0x4F000000
#define FINT_MIN_MINUS_1   0xCF000000

union repr {
    float       f;
    unsigned    u;
};

typedef unsigned    float_bits;

unsigned f2u(float f);

float_bits float_f2i(float_bits f)
{
    unsigned sign = f >> 31;
    unsigned exp = (f >> 23) & 0xFF;
    unsigned frac = f & ((1 << 23) - 1);
    int result;

    if (f >= FINT_MIN_MINUS_1 || (f >= FINT_MAX_PLUS_1 && f < 0x80000000)) {
        return 0x80000000;
    }

    if (exp == 0) {
        return 0;
    }

    if (exp < 127) {
        return 0;
    }

    frac = frac | (1 << 23);

    if (exp <= 150) {
        result = frac >> (150 - exp);
    } else {
        result = frac << (exp - 150);
    }

    if (sign)
        result = -result;

    return (float_bits) result;
}

void test_float_f2i_295()
{
    union repr r;
    int orig;
    unsigned our;

    for (r.u = 0; 1; r.u++)
    {
        // Calculate float_absval
        orig = (int) (r.f);
        our = float_f2i(r.u);
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
