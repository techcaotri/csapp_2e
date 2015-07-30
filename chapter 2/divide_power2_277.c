/*
 * divide_power2_277.c
 * Homework problem 2.77 in book: CS APP 2e
 *
 *  Created on: Jul 10, 2015
 *      Author: adminuser
 */


/* Divide by power of two. Assume 0 <= k < w-1 */
int divide_power2(int x, int k)
{
    // Get word size of int
    int wLength = sizeof(int) << 3;
    int bias = (x >> (wLength-1)) & ((1 << k) - 1);
    return (x + bias) >> k;
}
