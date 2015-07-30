/*
 * sign_extension.c
 * Practice problem 2.23 in book: CS APP 2e
 *
 *  Created on: Jun 30, 2015
 *      Author: adminuser
 */

int fun1(unsigned w)
{
    return (int) ((w << 24) >> 24);
}

int fun2(unsigned w)
{
    return (((int) w << 24) >> 24);
}

void evaluate_sign_extension()
{
    printf("x = 0x00000076 : fun1(x) = %p, fun2(x) = %p\n", fun1(0x00000076u), fun2(0x00000076u));
    printf("x = 0x87654321 : fun1(x) = %p, fun2(x) = %p\n", fun1(0x87654321u), fun2(0x87654321u));
    printf("x = 0x000000C9 : fun1(x) = %p, fun2(x) = %p\n", fun1(0x000000C9u), fun2(0x000000C9u));
    printf("x = 0xEDCBA987 : fun1(x) = %p, fun2(x) = %p\n", fun1(0xEDCBA987u), fun2(0xEDCBA987u));
}
