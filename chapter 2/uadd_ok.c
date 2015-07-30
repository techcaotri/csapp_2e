/*
 * uadd_ok.c
 * Practice problem 2.27 in book: CS APP 2e
 *
 *  Created on: Jul 1, 2015
 *      Author: adminuser
 */
 
 int uadd_ok(unsigned x, unsigned y)
 {
     if (x + y < x || x + y < y)
     {
         return 0;
     }
     return 1;
 }
