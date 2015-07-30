/*
 * lower_one_mask_268.c
 * Homework problem 2.68 in book: CS APP 2e
 *
 *  Created on: Jul 8, 2015
 *      Author: adminuser
 */


/*
 * Return mask with least significant bits set to 1s
 * Examples: n = 6 --> 0x3F, n = 17 --> 0x1FFFF
 * Assume 1 <= n <= w
 */
int lower_one_mask(int n)
{
    // Work around for case n = word size
    int exp_n = 1 << (n-1);
    exp_n = exp_n << 1;
    return exp_n - 1;
}
