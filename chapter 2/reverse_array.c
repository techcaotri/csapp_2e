/*
 * reverse_array.c
 * Practice problem 2.11 in book: CS APP 2e
 *
 *  Created on: Jun 29, 2015
 *      Author: adminuser
 */
#include <stdio.h>

void inplace_swapping(int *x, int *y)
{
    *x = *x ^ *y;
    *y = *x ^ *y;
    *x = *x ^ *y;
}

void reverse_array(int a[], int cnt)
{
    int first, last;
    for (first = 0, last = cnt-1;
            first <= last;
            first++, last--)
    {
        inplace_swapping(&a[first], &a[last]);
    }
}

void reverse_array_1(int a[], int cnt)
{
    int i;
    for (i = 0; i < cnt/2; i++)
    {
        inplace_swapping(&a[i], &a[cnt-1-i]);
    }
}

void print_array(int a[], int cnt)
{
    int i;
    for (i = 0; i < cnt; i++)
    {
        printf("%d: %d\n", i, a[i]);
    }
}
