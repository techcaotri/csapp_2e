/*
 * is_little_endian.c
 * Homework problem 2.58 in book: CS APP 2e
 *
 *  Created on: Jul 6, 2015
 *      Author: adminuser
 */

int is_little_endian()
{
    int x = 1;
    // Check if the first character at address of x is LSByte, if yes then it's little endian
    return (int) (*((char *) &x));
}
