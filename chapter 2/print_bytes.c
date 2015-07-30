/*
 * print_bytes.c
 * Practice problem 2.6 in book: CS APP 2e
 *
 *  Created on: Jun 26, 2015
 *      Author: adminuser
 */

#include <stdio.h>

typedef unsigned char *     byte_pointer;

void print_bytes(byte_pointer pointer, int size)
{
    int i;
    for (i = 0; i < size; i++)
    {
        printf(" %.2x", pointer[i]);
    }
    printf("\n");
}

void show_int(int x)
{
    print_bytes((byte_pointer) &x, sizeof(int));
}

void show_float(float x)
{
    print_bytes((byte_pointer) &x, sizeof(float));
}

void show_pointer(void *x)
{
    print_bytes((byte_pointer) &x, sizeof(void *));
}
