/*
 * main.c
 *
 *  Created on: Jul 21, 2015
 *      Author: adminuser
 */
struct P2
{
    int i; char c; char d; int j;
};

struct P3
{
    short w[3];
    char c[3];
};

struct pp342
{
    float       a;
    short       b;
    double      c;
    char        d;
    float       e;
    char        f;
    long long   g;
    float       h;
};

struct pp342_opt
{
    double      c;
    long long   g;
    float       a;
    float       e;
    float       h;
    short       b;
    char        d;
    char        f;
};

int main()
{
    int a[10];
    struct P2 p2;
    struct P3 p3;
    struct pp342 p;
    struct pp342_opt p_opt;

    printf("sizeof(P2) = %d\n", sizeof(p2));
    printf("offset(p2.j) = %d\n", (unsigned) (&(p2.j)) - (unsigned) (&p2));

    printf("sizeof(P3) = %d\n", sizeof(p3));
    printf("&p3 = %p; &p3.c = %p_opt\n", &p3, &(p3.c));

    printf("sizeof(double) = %d, sizeof(long long) = %d\n", sizeof(double), sizeof(long long));
    printf("sizeof(pp342) = %d\n", sizeof(p));
    printf("sizeof(pp342_opt) = %d\n", sizeof(p_opt));

    printf("offset(p.a) = %d\n", (unsigned) (&(p_opt.a)) - (unsigned) (&p_opt));
    printf("offset(p.b) = %d\n", (unsigned) (&(p_opt.b)) - (unsigned) (&p_opt));

//    printf("a = %p\n", a);
//    printf("(a+2) = %p\n", (a+2));
//    printf("&a[3] = %p\n", &a[3]);
//    printf("&a[3]-a = %d\n", &a[3]-a);
//    printf("&(a+2) = %p\n", &(a+2));
    // Test for fact_do_319
//    test_fact_do_319();
}
