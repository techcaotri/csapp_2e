/*
 * div16.c
 * Practice problem 2.36 in book: CS APP 2e
 *
 *  Created on: Jul 2, 2015
 *      Author: adminuser
 */

int div16(int x)
{
    return (x << 4) + ((x & 0xF) && (x >> 31));
}
