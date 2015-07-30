/*
 * tmul_ok.c
 * Practice problem 2.36 in book: CS APP 2e
 *
 *  Created on: Jul 2, 2015
 *      Author: adminuser
 */

int tmul_ok(int x, int y)
{
    long long pl = (long long) x * y;
    int p = x * y;
    return pl == p;
}
