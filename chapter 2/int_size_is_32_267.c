/*
 * int_size_is_32_267.c
 * Homework problem 2.67 in book: CS APP 2e
 *
 *  Created on: Jul 8, 2015
 *      Author: adminuser
 */


int int_size_is_32()
{
    /* Set most significant bit (msb) of 32-bit machine */
    int set_msb = 1 << 31;
    /* Shift past msb of 32-bit word */
//    int beyond_msb = 1 << 32;
//    int beyond_msb = set_msb + set_msb;
    int beyond_msb = set_msb << 1;

    /* set_msb is nonzero when word size >= 32
        beyond_msb is zero when word size <= 32 */
    return set_msb && !beyond_msb;
}
