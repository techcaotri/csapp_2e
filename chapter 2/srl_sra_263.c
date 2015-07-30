/*
 * srl_sra_263.c
 * Homework problem 2.63 in book: CS APP 2e
 *
 *  Created on: Jul 7, 2015
 *      Author: adminuser
 */

unsigned srl(unsigned x, int k)
{
    // Compute arithmetic right shift of x
    unsigned xsra = (int) x >> k;
    // Compute the mask value for clearing all sign bit (ones),
    // we use ternary conditional operator here since the shift value (sizeof(int)*8 - k) will be modulo to 32.
    unsigned mask = k ? (1 << (sizeof(int)*8 - k)) - 1 : ~0;

    return xsra & mask;
}

int sra(int x, int k) {
    /* Perform shift logically */
    int xsrl = (unsigned) x >> k;

    // Get the sign bit
    unsigned sign_bit = (unsigned) x >> ((sizeof(int)<<3)-1);

    unsigned mask = (k > 0 && sign_bit) ? -1 << ((sizeof(int)<<3)-k) : 0;

    return xsrl | mask;
}

int sra1(int x, int k) {
    /* Perform shift logically */
    int xsrl = (unsigned) x >> k;
    return x < 0 ? xsrl | (-1 << ((8 * sizeof(int)) - k)) : xsrl;
}
