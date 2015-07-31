/*
 * good_echo_368.c
 * Homework problem 3.68 in book: CS APP 2e
 *
 *  Created on: Jul 21, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <string.h>

#define BUFFER_SIZE 10

void good_echo()
{
    char buf[BUFFER_SIZE];

    puts("Reading from input");
    while (fgets(buf, BUFFER_SIZE, stdin) != NULL) {
        printf(buf);
        if (buf[strlen(buf)-1] == '\n')
            return;
    }
    puts("Error!");
}
