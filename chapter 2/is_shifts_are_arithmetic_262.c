/*
 * is_shifts_are_arithmetic_262.c
 * Homework problem 2.62 in book: CS APP 2e
 *
 *  Created on: Jul 7, 2015
 *      Author: adminuser
 */

int is_shifts_are_arithmetic(int x)
{
    // Arithmetic right shift of -1 is -1
    return !(1 + (-1 >> 1));
}
