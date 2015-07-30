/*
 * float_i2f_296.c
 * Homework problem 2.96 in book: CS APP 2e
 *
 *  Created on: Jul 14, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <limits.h>

typedef unsigned    float_bits;

union repr {
    float       f;
    unsigned    u;
};

unsigned f2u(float f);

float_bits float_i2f(float_bits f)
{
    unsigned sign = f & (0x80000000);
    unsigned exp = 0;
    int input = (int) f;
    unsigned frac = 0;
    unsigned tail = 0;
    int i;

    // Special case we need to treat since -INT_MIN = INT_MIN = 0x80000000
    if (f == 0x80000000) {
        return 0xCF000000;
    }

    if (f == 0) {
        return 0;
    }

    // Get absolute value
    if (sign) {
        input = -input;
    }

    frac = input;

    // Get exponent and tail value
    for (exp = 31 + 127; !(frac & 0x80000000); exp--) {
        frac <<= 1;
    }
    tail = frac & 0xFF;
    frac >>= 8;

    // rounding:
    //  + add 1 to frac if tail is closer to upper value
    //  +
    if ((tail > 0x80) || (tail == 0x80 && (frac & 1)))
        frac += 1;

    // if frac is round over to bit 24, then increase exponent by 1
    if (frac == 0x01000000)
        exp += 1;

    frac &= 0x7FFFFF;

    return sign | exp << 23 | frac;
}

void test_float_i2f_296()
{
    union repr r;
    int orig_i;
    float orig_f;
    unsigned orig;
    unsigned our;

    for (r.u = 0; 1; r.u++)
    {
        // Calculate float_absval

        orig_i = (int) r.u;
        orig_f = (float) orig_i;
        orig = f2u(orig_f);
        our = float_i2f(orig_i);
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
