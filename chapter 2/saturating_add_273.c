/*
 * saturating_add_273.c
 * Homework problem 2.73 in book: CS APP 2e
 *
 *  Created on: Jul 9, 2015
 *      Author: adminuser
 */

/* Addition that saturates to TMin or TMax */
#include <stddef.h>

int from_sign_bit_get_max_min(int x)
{
    size_t bitLength = sizeof(int) << 3;
    unsigned maskMSB = 1 << (bitLength - 1);
    unsigned tmp = x & maskMSB;
    unsigned tmp1 = !(x & maskMSB);
    int min_max = maskMSB - !(x & maskMSB);
}

int saturating_add(int x, int y) {
    size_t bitLength = sizeof(int) << 3;
    unsigned maskMSB = 1 << (bitLength - 1);
    int z = x + y;
    int overFlow = ((x & maskMSB) == (y & maskMSB)) && ((y & maskMSB) != (z & maskMSB));
    z &= (overFlow - 1);
    return z | ((!overFlow - 1) & (maskMSB - !(x & maskMSB)));
}

int my_saturating_add(int x, int y)
{
    // Get number of bits in word
    unsigned wLength = sizeof(int) << 3;
    // Compute normal sum
    unsigned z = x + y;
    // Check if the add operation is overflow
    unsigned is_overflow = ((x ^ z) & (y ^ z)) >> (wLength - 1);
    // Get mask of overflow: of. of will be 1111...1 when add operation is overflow,
    // 00..0 if otherwise.
    unsigned of = !is_overflow - 1;
    // Get TMin or TMax value: min_max. min_max is TMin if x < 0, or TMax if x >= 0;
//    int min_max = (1 << (wLength - 1)) - !(x >> (wLength - 1));
    // Another way to get min_max (definition above) since TMin = ~TMax;
    int min_max = ((1 << (wLength - 1)) - 1) ^ (x >> (wLength - 1));

    // Return saturating add value
    return (z & ~of) | (of & min_max);
}
