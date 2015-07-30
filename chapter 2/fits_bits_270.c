/*
 * fits_bits_270.c
 * Homework problem 2.70 in book: CS APP 2e
 *
 *  Created on: Jul 8, 2015
 *      Author: adminuser
 */

/*
 * Return 1 when x can be represented as an n-bit, 2's complement number, 0 otherwise.
 * Assume 1 <= n <= w
 */
int fits_bits(int x, unsigned n)
{
    int w = (sizeof(x) << 3) - n;
    int y = x << w;
    return x == (y >> w);
}
