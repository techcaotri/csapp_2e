/*
 * sum_elements.c
 * Practice problem 2.25 in book: CS APP 2e
 *
 *  Created on: Jul 1, 2015
 *      Author: adminuser
 */

float sum_elements(float a[], unsigned length)
{
    int i;
    float result = 0;

    for (i = 0; i <= (signed) length - 1; i++)
    {
        result += a[i];
    }
    return result;
}
