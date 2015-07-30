/*
 * odd_ones_265.c
 * Homework problem 2.65 in book: CS APP 2e
 *
 *  Created on: Jul 8, 2015
 *      Author: adminuser
 */

/*
 * Return 1 when x contains an odd number of 1s, 0 if otherwise. Assume w = 32
 */
int odd_ones(unsigned x)
{
    x ^= x >> 16;
    x ^= x >> 8;
    x ^= x >> 4;
    x ^= x >> 2;
    x ^= x >> 1;
    return x & 1;
}
