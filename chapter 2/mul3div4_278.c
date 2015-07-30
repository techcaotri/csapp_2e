/*
 * mul3div4_278.c
 * Homework problem 2.78 in book: CS APP 2e
 *
 *  Created on: Jul 10, 2015
 *      Author: adminuser
 */


int mul3div4(int x)
{
    // Get word size
    int wLength = sizeof(int) << 3;
    // Compute mul 3
    int mul3 = (x << 1) + x;
    // Compute bias of mul 3 to prepare for the division
    int bias = (mul3 >> (wLength-1)) & ((1 << 2) - 1);
    // Return result
    return (mul3 + bias) >> 2;
}
