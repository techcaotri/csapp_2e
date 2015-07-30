/*
 * tsub_ok_274.c
 * Homework problem 2.74 in book: CS APP 2e
 *
 *  Created on: Jul 9, 2015
 *      Author: adminuser
 */

#include <limits.h>

/* Determine whether arguments can be subtracted and result overflow
 * This is BUGGY code, it does not handle case y = TMIN which always cause overflow */
int tsub_ovf(int x, int y) {
    int z = x - y;
    unsigned maskMSB = 1 << ((sizeof(int) << 3) - 1);
    return ((z & maskMSB) == (y & maskMSB)) && ((z & maskMSB) != (x & maskMSB));
}

/* Determine whether arguments can be subtracted without overflow */
int tsub_ok(int x, int y)
{
    // Get word size
    unsigned wLength = sizeof(int) << 3;
    unsigned sign_x = x >> (wLength - 1);
    unsigned sign_y = y >> (wLength - 1);
    int z = x -y;
    unsigned sign_z = z >> (wLength - 1);

    unsigned overflow = ((sign_x & sign_y) && (y == INT_MIN))
            | ((sign_x ^ sign_y) && (sign_z != sign_x));
    return !overflow;
}
