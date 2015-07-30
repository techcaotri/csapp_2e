/*
 * copy_elements.c
 * Practice problem 2.36 in book: CS APP 2e
 *
 *  Created on: Jul 2, 2015
 *      Author: adminuser
 */

#include <stdlib.h>

/*
 * Illustration of code vulnerability that found in Sun's XDR library
 */
void* copy_elements(void *ele_src[], int ele_cnt, size_t ele_size)
{
    unsigned int num_bytes = ele_cnt * ele_size;
    void *result = malloc(num_bytes);
    if (result == NULL)
    {
        return NULL;
    }

    int i;
    void *next = result;
    for (i = 0; i < ele_cnt; i++)
    {
        memcpy(next, ele_src[i], ele_size);
        next += ele_size;
    }
    return result;
}

void* copy_elements_fix(void *ele_src[], int ele_cnt, size_t ele_size)
{
    // use logic of tmul_ok
    long long unsigned pll = ele_cnt * ele_size;
    unsigned int p = ele_cnt * ele_size;
    if (p != pll) return NULL;

    void *result = malloc(p);
    if (result == NULL)
    {
        return NULL;
    }

    int i;
    void *next = result;
    for (i = 0; i < ele_cnt; i++)
    {
        memcpy(next, ele_src[i], ele_size);
        next += ele_size;
    }
    return result;
}
