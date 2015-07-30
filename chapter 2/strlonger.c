/*
 * strlonger.c
 * Practice problem 2.26 in book: CS APP 2e
 *
 *  Created on: Jul 1, 2015
 *      Author: adminuser
 */
#include <stdio.h>
#include <string.h>

int strlonger(char *s, char *t)
{
    return ((int) (strlen(s) - strlen(t))) > 0;
}
