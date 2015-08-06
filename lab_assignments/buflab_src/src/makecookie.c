/* 
 * makecookie.c - generates and prints cookie
 *
 * Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
 * May not be used, modified, or copied without permission.
 */
#include <stdio.h>
#include <stdlib.h>
#include "gencookie.h"

int main(int argc, char *argv[])
{
    int i;
    for (i = 1; i < argc; i++) {
	unsigned c = gencookie(argv[i]);
	printf("0x%x\n", c);
    }
    return 0;
}
