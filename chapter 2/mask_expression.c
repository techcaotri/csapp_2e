/*
 * mask_expression.c
 * Practice problem 2.12 in book: CS APP 2e
 *
 *  Created on: Jun 29, 2015
 *      Author: adminuser
 */

void mask_expression()
{
    int x = 0x87654321;
    // A
    int a = x & 0xFF;
    // B
    int b = ((~x) & 0xFFFFFF00) | (x & 0xFF);
    // C
    int c = x | 0xFF;

    printf("A = %p\n", a);
    printf("B = %p\n", b);
    printf("C = %p\n", c);
}
