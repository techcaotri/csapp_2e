/*
 * float_half_294.c
 * Homework problem 2.94 in book: CS APP 2e
 *
 *  Created on: Jul 14, 2015
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

float_bits float_half(float_bits f)
{
    unsigned sign = f & (1 << 31);
    unsigned exp = (f >> 23) & 0xFF;
    unsigned frac = f & ((1 << 23) - 1);

    switch (exp) {
    case 1:
        // Transform from normalized to denormalized
        exp = 0;
        frac |= 1 << 23;   // fall through
    case 0:
        // Calculate half of denormalized number
        if ((frac & 3) == 3) {    // End with binary 0b11
            // Increase by 1 to round to even
            frac += 1;
        }
        // Shift frac right 1 to get the half
        frac = frac >> 1;
        break;

    case 0xFF:
        // Calculate half of infinity or NaN -> Just return f
        break;
    default:
        // Calculate half of normalized number -> decrease exponent by 1
        exp -= 1;
    }

    return sign | exp << 23 | frac;
}

void test_float_half_294()
{
    union repr r;
    unsigned orig;
    unsigned our;

    for (r.u = 0; 1; r.u++)
    {
        // Calculate float_absval
        orig = f2u(r.f/2);
        our = float_half(r.u);
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
