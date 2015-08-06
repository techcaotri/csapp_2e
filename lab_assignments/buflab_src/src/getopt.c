#include <stdio.h>
#include <stdlib.h>

/* Implementation of library function getopt */

char *optarg;

int getopt(int argc, char *argv[], char *key)
{
    static int i = 0;

    i++;
    if (i >= argc)
	return -1;
    optarg = NULL;
    if (*argv[i] == '-') {
	char *s = argv[i]+1;
	char *k;
	char c = *s++;
	for (k = key; *k && *k != c; k++)
	    ;
	if (*k) {
	    if (*++k == ':') {
		if (*s) {
		    optarg = s;
		}
		else if (i < argc-1) {
		    optarg = argv[++i];
		} else
		    return -1;
	    }
	    return c;
	} else
	    return -1;
    }
    return -1;
}

