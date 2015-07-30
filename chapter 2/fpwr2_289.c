/*
 * fpwr2_289.c
 * Homework problem 2.89 in book: CS APP 2e
 *
 *  Created on: Jul 12, 2015
 *      Author: adminuser
 */

float u2f(unsigned u)
{
    return 0.0f;
}

float fpwr2(int x)
{
    unsigned exp, frac;
    unsigned u;

    if (x < -149) {
        // Too small. Return 0.0
        exp = 0;
        frac = 0;
    } else if (x < -126) {
        // Denormalized result
        exp = 0;
        frac = 1 << (149 + x);
    } else if (x < 128) {
        // Normalized result
        exp = x + 127;  // bias is 127
        frac = 0;
    } else {
        // Too big, return +infinity
        exp = 0xFF;
        frac = 0;
    }

    // Pack exp and frac into 32 bits;
    u = (exp << 23) | frac;

    return u2f(u);
}
