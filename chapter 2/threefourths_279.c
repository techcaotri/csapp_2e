/*
 * threefourths_279.c
 * Homework problem 2.79 in book: CS APP 2e
 *
 *  Created on: Jul 10, 2015
 *      Author: adminuser
 */

/*
 * Compute value 3/4*x.
 */
int threefourths(int x)
{
    // Get word size
    int wLength = sizeof(int) << 3;
    /*
     * We can represent 3*x as:
     * x = 4*y' + 3*r'             (r' < 4)
     * => 3*x = 3*4*y' + 3*r' = 4*y + r
     * => 3x/4 = y + r/4 = (x >> 1) + (x >> 2) + r/4
     */
    int y = (x >> 1) + (x >> 2);
    int r = (x & 3) + (x << 1) & 3;

    // We can represent r = 3*r' as:
    // r = 4*z + r''        (r'' < 4)
    // => r/4 = z + r''/4
    // => 3x/4 = y + z + r''/4
    y += r >> 2;

    return y + ((x >> (wLength - 1)) && (r & 3));
}
