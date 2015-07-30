/*
 * check_bits_261.c
 * Homework problem 2.61 in book: CS APP 2e
 *
 *  Created on: Jul 7, 2015
 *      Author: adminuser
 */

// Any bit of x equals 1
int check_bits_261_A(int x)
{
    // => x must be different than 0x00
//    return (x && 1);
    // solution
    return (!!x);
}

// Any bit of x equals 0
int check_bits_261_B(int x)
{
    // => x must be different than 0xFFFFFFFF = -1
    return (!!(1+x));
}

// Any bit in the least significant byte of x equals 1
int check_bits_261_C(int x)
{
    // => least significant byte of x must be different than 0x00
    return (!!(x & 0xFF));
}

// Any bit in the most significant byte of x equals 0
int check_bits_261_D(int x)
{
    int y = 1 + (-1 >> 1);
    // => least significant byte of x must be different than 0xFF
//    return !!(0xFF - ((x >> 24) & 0xFF));
    return (((~x) >> 24) & 0xFF) && 1;
}
