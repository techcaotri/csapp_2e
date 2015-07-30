/*
 * rotate_left_269.c
 * Homework problem 2.69 in book: CS APP 2e
 *
 *  Created on: Jul 8, 2015
 *      Author: adminuser
 */


/*
 * Do rotating left shift. Assume 0 <= n < w
 * Examples when x = 0x12345678 and w = 32:
 * n=4 -> 0x23456781, n=20 -> 0x67812345
 */
unsigned rotate_left(unsigned x, int n)
{
    return (x << n) | (x >> ((sizeof(x)<<3)-n));
}
