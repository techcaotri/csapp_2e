/*
 * xbyte_271.c
 * Homework problem 2.71 in book: CS APP 2e
 *
 *  Created on: Jul 8, 2015
 *      Author: adminuser
 */

// Declaration of data type where 4 bytes are packed into an unsigned
typedef unsigned packed_t;

/* Extract byte from word. Return as signed integer */
int xbyte(packed_t word, int bytenum)
{
    return (word >> (bytenum << 3)) & 0xFF;
}

int xbyte_corrected(packed_t word, int bytenum)
{
    int sl_val = word << (24 - (bytenum << 3));
    return sl_val >> 24;
}
