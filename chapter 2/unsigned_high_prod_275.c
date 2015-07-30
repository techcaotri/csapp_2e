/*
 * unsigned_high_prod_275.c
 * Homework problem 2.75 in book: CS APP 2e
 *
 *  Created on: Jul 9, 2015
 *      Author: adminuser
 */


/*
 * x = signed, y = signed, x' = unsigned x, y' = unsigned y
 * x' = x + x_{w-1}*2exp(w), y' = y + y_{w-1}*2exp(w) (formula 2.5 in book)
 * x' * y' = x * y + (x_{w-1} * y + y_{w-1} * x]) * 2exp(w) + x_{w-1}]*y_{w-1}*2exp(2*w)
 * => We can omit the final term since it has no effect on 2w-bit representation of x'*y'
 */
int signed_high_prod(int x, int y)
{

}

unsigned unsigned_high_prod(unsigned x, unsigned y)
{
    unsigned p = (unsigned) signed_high_prod(x ,y);

    if ((int) x < 0)
        p += y;

    if ((int) y < 0)
        p += x;

    return p;
}
