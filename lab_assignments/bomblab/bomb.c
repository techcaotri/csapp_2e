/*
 *  bomb.c
 *  copy from http://my.oschina.net/gallant/blog/94601
 *  Created on: Aug 5, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <signal.h>
#include <unistd.h>

FILE *infile;   /* &infile : 0x804b664 */
int num_input_strings = 0; /* &num_input_strings = 0x804b480 */
char input_strings[20][80]; /* 1600 = 20 * 80 */

struct linknode_t { /* linked list node type */
    int data;
    int index;
    struct linknode_t *next;
};

struct btnode_t { /* binary tree node type */
    int data;
    struct btnode_t *left;
    struct btnode_t *right;
};

void initialize_bomb();
char * read_line();
void phase_1(char *lineptr);
void phase_2(char *lineptr);
void phase_3(char *lineptr);
void phase_4(char *lineptr);
void phase_5(char *lineptr);
void phase_6(char *lineptr);
void phase_defused();
void explode_bomb();
void read_six_numbers(char *buf, int *num);
int string_length(char *s);
int strings_not_equal(char *s1, char *s2);

struct linknode_t
node6 = {0x1b0, 6, NULL},
node5 = {0xd4,  5, &node6},
node4 = {0x3e5, 4, &node5},
node3 = {0x12d, 3, &node4},
node2 = {0x2d5, 2, &node3},
node1 = {0xfd,  1, &node2};

struct btnode_t
n48 = {0x3e9, NULL, NULL},
n46 = {0x2f,  NULL, NULL},
n43 = {0x14,  NULL, NULL},
n42 = {0x07,  NULL, NULL},
n44 = {0x23,  NULL, NULL},
n47 = {0x63,  NULL, NULL},
n41 = {0x01,  NULL, NULL},
n45 = {0x28,  NULL, NULL},
n34 = {0x6b,  &n47, &n48},
n31 = {0x06,  &n41, &n42},
n33 = {0x2d,  &n45, &n46},
n32 = {0x16,  &n43, &n44},
n22 = {0x32,  &n33, &n34},
n21 = {0x08,  &n31, &n32},
n1  = {0x24,  &n21, &n22};


int main(int argc, char **argv) {
    char *lineptr;

    if (argc == 1) {
        infile = stdin;
    }
    else if (argc == 2) {
        infile = fopen(argv[1], "r");
        if (infile == NULL) {
            printf("%s: Error: Couldn't open %s\n", argv[0], argv[1]);
            exit(8);
        }
    }
    else {
        printf("Usage: %s [<input_file>]\n", argv[0]);
        exit(8);
    }

    initialize_bomb();

    printf("Welcome to my fiendish little bomb. You have 6 phases with\n");
    printf("which to blow yourself up. Have a nice day!\n");

    lineptr = read_line();
    phase_1(lineptr);
    phase_defused();
    printf("Phase 1 defused. How about the next one?\n");

    lineptr = read_line();
    phase_2(lineptr);
    phase_defused();
    printf("That's number 2.  Keep going!\n");

    lineptr = read_line();
    phase_3(lineptr);
    phase_defused();
    printf("Halfway there!\n");

    lineptr = read_line();
    phase_4(lineptr);
    phase_defused();
    printf("So you got that one.  Try this one.\n");

    lineptr = read_line();
    phase_5(lineptr);
    phase_defused();
    printf("Good work!  On to the next...\n");

    lineptr = read_line();
    phase_6(lineptr);
    phase_defused();

    return 0;
}

void phase_1(char *lineptr) {
    if (strings_not_equal(lineptr, "Public speaking is very easy.") != 0) {
        explode_bomb();
    }
}

void phase_2(char *lineptr) {
    int numbers[6];
    int i;

    read_six_numbers(lineptr, numbers);

    if (numbers[0] != 1)
        explode_bomb();

    i = 1;
    do { /* 1 2 6 24 120 720 */
        if (numbers[i - 1] * (i + 1) != numbers[i])
            explode_bomb();
        i++;
    }while (i <= 5);
}

void phase_3(char *lineptr) {
    int m;
    char ch, ct;
    int n;
    if (sscanf(lineptr, "%d %c %d", &n, &ch, &m) < 3)
        explode_bomb();
    switch (n) {
    case 0:
        ct = 0x71; /* q */
        if (m != 0x309) /* 777 */
            explode_bomb();
        break;
    case 1:
        ct = 0x62; /* b */
        if (m != 0xd6) /* 214 */
            explode_bomb();
        break;
    case 2:
        ct = 0x62;
        if (m != 0x2f3) /* 755 */
            explode_bomb();
        break;
    case 3:
        ct = 0x6b;  /* k*/
        if (m != 0xfb) /* 251 */
            explode_bomb();
        break;
    case 4:
        ct = 0x6f;  /* o */
        if (m != 0xa0) /* 160 */
            explode_bomb();
        break;
    case 5:
        ct = 0x74;  /* t */
        if (m != 0x1ca) /* 458 */
            explode_bomb();
        break;
    case 6:
        ct = 0x76;  /* v */
        if (m != 0x30c) /* 780 */
            explode_bomb();
    case 7:
        ct = 0x62;  /* b */
        if (m != 0x20c) /* 524 */
            explode_bomb();
        break;
    default:
        ct = 0x78;  /* x */
        explode_bomb();
    }
    if (ch != ct)
        explode_bomb();
}

int func4(int n) { /* fibonacci */
    if (n > 1) {
        return func4(n - 1) + func4(n - 2);
    }
    return 1;
}

void phase_4(char *lineptr) {
    int m;
    if (sscanf(lineptr, "%d", &m) != 1 || m <= 0) {
        explode_bomb();
    }
    if (func4(m) != 55) /* m != 9 */
        explode_bomb();
}

void phase_5(char *lineptr) {
    static char array[16] = {'i', 's', 'r', 'v', 'e', 'a', 'w', 'h',
            'o', 'b', 'p', 'n', 'u', 't', 'f', 'g'};
    char str[8];
    int i;

    if (string_length(lineptr) != 6)
        explode_bomb();

    for (i = 0; i <= 5; i++) {
        str[i] = array[ lineptr[i] & 0xf ];
    }

    str[6] = '\0';
    if (strings_not_equal(str, "giants")) /* 0xf, 0x0, 0x5, 0xb, 0xd, 0x1 */
        explode_bomb();
    /* 0x61~0x70: 0x6f(o), 0x70(p), 0x65(e), 0x6b(k), 0x6d(m), 0x71(q)
     * opekmq
     */
}

void phase_6(char *lineptr) {
    int numbers[6];
    struct linknode_t *pnode[6], *q;
    int i, k;

    q = &node1;
    read_six_numbers(lineptr, numbers);

    i = 0;
    do {
        if (numbers[i] - 1 > 5u)
            explode_bomb();
        for (k = i + 1; k <= 5; k++) {
            if (numbers[i] == numbers[k])
                explode_bomb();
        }
        i++;
    } while (i <= 5);

    i = 0;
    do {
        q = &node1;
        k = 1;
        while (k < numbers[i]) {
            q = q->next;
            k++;
        }
        pnode[i] = q;
        i++;
    } while (i <= 5);

    q = pnode[0];
    i = 1;
    do {
        q->next = pnode[i];
        q = pnode[i];
        i++;
    } while (i <= 5);
    q->next = NULL;

    i = 0;
    q = pnode[0];
    do {
        if (q->data < q->next->data)
            explode_bomb();
        q = q->next;
        i++;
    } while (i <= 4);
}

int fun7(struct btnode_t *r, int y) {
    if (r == NULL)
        return -1;
    if (y < r->data) {
        return 2 * fun7(r->left, y);
    }
    else if (y > r->data) {
        return 2 * fun7(r->right, y) + 1;
    }
    else /* y == r->data */
        return 0;
}

void secret_phase() {
    char *lineptr;
    int k;

    lineptr = read_line();
    /* strol(nptr, endptr, base)
     * __strol_internal(nptr, endptr, base, _NL_CURRENT_LOCAL)
     * __strol_internal(lineptr, NULL, 10, 0);
     */
    k = (int)strtol(lineptr, NULL, 10);
    if (k - 1 > 1000u) {
        explode_bomb();
    }
    if (fun7(&n1, k) != 7) {
        explode_bomb();
    }
    printf("Wow! You've defused the secret stage!\n");
    phase_defused();
}

void sig_handler() {
    printf("So you think you can stop the bomb with ctrl-c, do you?\n");
    sleep(3);
    printf("Well...");
    fflush(stdout);
    sleep(1);
    printf("OK. :-)\n");
    exit(16);
}

void invalid_phase(){
}

void read_six_numbers(char *buf, int *num) {
    if (sscanf(buf, "%d %d %d %d %d %d", &num[0], &num[1],
            &num[2], &num[3], &num[4], &num[5]) < 6) {
        explode_bomb();
    }
}

int string_length(char *str) {
    char *pchar = str;
    int slen = 0;
    while (*pchar++) {
        slen++;
    }

    return slen;
}

int strings_not_equal(char *s1, char *s2) {
    int slen1 = string_length(s1);
    int slen2 = string_length(s2);
    char *pchar1 = s1, *pchar2 = s2;

    if (slen1 != slen2)
        return 1;

    while (*pchar1) {
        if (*pchar1++ != *pchar2++)
            return 1;
    }

    return 0;
}

void initialize_bomb() {
    signal(SIGINT, sig_handler);
}

int blank_line(char *lineptr) {
    char *pchar = lineptr;

    while (*pchar != '\0') {
        if (!isspace(*pchar++)) {
            return 0;
        }
    }

    return 1;
}

char * skip() {
    char *lineptr;
    do {
        lineptr = fgets(input_strings[num_input_strings], 80, infile);
        if (lineptr == NULL || !blank_line(lineptr))
            break;
    } while (1);

    return lineptr;
}

char * read_line() {
    char *lineptr;
    int i;

    lineptr = skip();
    if (lineptr == NULL) {
        if (infile != stdin) {
            if (getenv("GRADE_BOMB") != NULL) {
                exit(0);
            }
            infile = stdin;
            lineptr = skip();
        }
        if (lineptr == NULL) {
            printf("Error: Premature EOF on stdin\n");
            explode_bomb();
        }
    }
    for (i = 0; lineptr[i] != '\0'; i++);
    if (i == 79) {
        printf("Error: Input line too long\n");
        explode_bomb();
    }
    input_strings[num_input_strings][i - 1] = '\0'; /* delete \n */
    lineptr = input_strings[num_input_strings];
    num_input_strings++;

    return lineptr;
}

void explode_bomb() {
    printf("\nBOOM!!!\n");
    printf("The bomb has blown up.\n");
    exit(8);
}

void phase_defused() {
    char line[80];
    int k;
    if (num_input_strings == 6) {
        if (sscanf(input_strings[3], "%d %s", &k, line) == 2) {
            if (!strings_not_equal(line, "austinpowers")) {
                printf("Curses, you've found the secret phase!\n");
                printf("But finding it and solving it are quite different...\n");
                secret_phase();
            }
        }
        printf("Congratulations! You've defused the bomb!\n");
    }
}
