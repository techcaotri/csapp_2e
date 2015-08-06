/*
 * sendstring.c - Convert string in hex format into raw bytes. 
 * 
 * Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
 * May not be used, modified, or copied without permission.
 */

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>

#ifdef __CYGWIN__
#include "getopt.h"
#endif

static void usage(char *name)
{
    printf("Usage: %s [-f file] [-n cnt] -h\n", name);
    printf("\t-n cnt:    Number of times to repeat string\n");
    printf("\t-f file:   Specify input file (default = stdin)\n");
    printf("\t-h :       Print help information\n");
    exit(0);
}

#define MAXLEN 1024
static char savebuf[MAXLEN+1];
static int savecnt = 0;

/* Hex formatted string consists of pairs of hex digits.
   Nondigit characters are ignored.  Stops when encounters newline */
int main (int argc, char *argv[])
{
    int c;
    int i;
    int cnt = 1;
    int even = 1; /* Have read even number of digits */
    int otherd = 0; /* Other hex digit of pair */
    FILE *infile = stdin;
    while ((c = getopt(argc, argv, "hn:f:")) != -1)
	switch(c) {
	case 'h':
	    usage(argv[0]);
	    break;
	case 'n':
	    cnt = atoi(optarg);
	    break;
	case 'f':
	    infile = fopen(optarg, "r");
	    if (!infile) {
		fprintf(stderr, "Can't open file %s\n", optarg);
		exit(0);
	    }
	}

    while ((c = getc(infile)) != EOF && c != '\n') {
	if (isxdigit(c)) {
	    int val;
	    if ('0' <= c && c <= '9')
		val = c - '0';
	    else if ('A' <= c && c <= 'F')
		val = c - 'A' + 10;
	    else
		val = c - 'a' + 10;
	    if (even) {
		otherd = val;
		even = 0;
	    } else {
		int oc = otherd * 16 + val;
		if (oc == '\n')
		    fprintf(stderr,"Warning: string contains eol\n");
		if (savecnt <= MAXLEN)
		    savebuf[savecnt++] = oc;
		even = 1;
	    }
	}
    }
    savebuf[savecnt++] = '\n';

    for (i = 0; i < cnt; i++) {
	int j;
	for (j = 0; j < savecnt; j++)
	    putchar(savebuf[j]);
    }
    return 0;
}
