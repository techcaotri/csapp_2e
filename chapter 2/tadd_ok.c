/*
 * tadd_ok.c
 * Practice problem 2.30 in book: CS APP 2e
 *
 *  Created on: Jul 1, 2015
 *      Author: adminuser
 */

int tadd_ok(int x, int y)
{
    if (x < 0 && y < 0 && (x + y) > 0)
    {
        return 0;
    }

    if (x > 0 && y > 0 && (x + y) < 0)
    {
        return 0;
    }
    return 1;
}
