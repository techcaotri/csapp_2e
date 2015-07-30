/*
 * merge_word.c
 * Homework problem 2.58 in book: CS APP 2e
 *
 *  Created on: Jul 6, 2015
 *      Author: adminuser
 */

unsigned int merge_word(unsigned x, unsigned y)
{
    return (x & 0xFF) | (y & 0xFFFFFF00);
}
