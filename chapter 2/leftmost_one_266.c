/*
 * leftmost_one_266.c
 * Homework problem 2.66 in book: CS APP 2e
 *
 *  Created on: Jul 8, 2015
 *      Author: adminuser
 */

/*
 * Generate mask indicating the left most 1-bit in x. Assume w=32.
 * For example 0xFF00 -> 0x8000, and 0x6600 --> 0x4000.
 * If x = 0, then return 0.
 */
unsigned leftmost_one(unsigned x)
{
    // Propagate left most 1 to the right end
    x |= x >> 1;
    x |= x >> 2;
    x |= x >> 4;
    x |= x >> 8;
    x |= x >> 16;
    // current value of x has the bit vector of the form [0..011...1]
    // -> simply plus 1 to get the mask value
    return (x + 1) >> 1;
}
