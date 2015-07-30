/*
 * any_odd_one_264.c
 * Homework problem 2.64 in book: CS APP 2e
 *
 *  Created on: Jul 7, 2015
 *      Author: adminuser
 */

/*
 * Return 1 if any odd bit of x equals 1, 0 if otherwise. Assume w=32.
 */
int any_odd_one(unsigned x)
{
    return (x & 0xAAAAAAAA) && 1;
}
