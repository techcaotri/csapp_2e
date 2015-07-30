/*
 * fact_do_319.c
 * Practice problem 3.19 in book: CS APP 2e
 *
 *  Created on: Jul 21, 2015
 *      Author: adminuser
 */

#include <stdio.h>

long fact_do(int n) {
    long result = 1;
    do {
        result = result * n;
        n = n - 1;
    } while (n > 1);
    return result;
}

void test_fact_do_319()
{
    long fact = 0;
    long prev_fact = 0;
    int i;
    for (i = 1; i < 100; i++) {
        fact = fact_do(i);
        printf("fact(%d) = %llu\n", i, fact);
        if (fact <= prev_fact)
            break;
        prev_fact = fact;
    }
}
