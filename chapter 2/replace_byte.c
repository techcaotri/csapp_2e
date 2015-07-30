/*
 * replace_byte.c
 * Homework problem 2.60 in book: CS APP 2e
 *
 *  Created on: Jul 6, 2015
 *      Author: adminuser
 */

unsigned replace_byte(unsigned x, int i, unsigned char b)
{
    // Get the mask for mask out the byte at i position
    unsigned mask = ~((0xFF) << (i << 3));

    // return the replaced value
    return (x & mask) | (b << (i << 3));
}
