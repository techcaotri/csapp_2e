/*
 * gen_bit_280.c
 * Homework problem 2.79 in book: CS APP 2e
 *
 *  Created on: Jul 10, 2015
 *      Author: adminuser
 */


unsigned gen_bit_A(int k)
{
    // 1{w-k}0{k}
    return ~((1 << k) - 1);
}

unsigned gen_bit_B(int k, int j)
{
    // 0{w-k-j}1{k}0{j}
    return ((1 << k) - 1) << j;
}
