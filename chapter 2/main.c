/*
 * main.c
 *
 *  Created on: Jun 29, 2015
 *      Author: adminuser
 */
#include <limits.h>
#include <stdint.h>

void show_int(int x);
void show_float(float x);
void show_pointer(void *x);
void inplace_swapping(int *x, int *y);
void reverse_array(int a[], int cnt);

void main(int argc, char *argv[])
{
    // Practice problem 2.6
    /*int x = 0x123456;

    show_int(x);
    show_float(0.5f);
    show_pointer(&x);*/

    // Practice problem 2.11
//    int arr[] = { 1, 2, 3, 4, 5};
//    int x = 3;
//    int y = 3;
//
//    printf("x = %d, y = %d\n", x , y);
//    inplace_swapping(&x, &x);
//    printf("x = %d, y = %d\n", x , y);
//    printf("sizeof(arr) = %d\n", sizeof(arr));
//    printf("sizeof(*arr) = %d\n", sizeof(*arr));
//    print_array(arr, sizeof(arr)/sizeof(*arr));
//    reverse_array_1(arr, sizeof(arr)/sizeof(*arr));
//    printf("\n");
//    print_array(arr, sizeof(arr)/sizeof(*arr));

    // Practice problem 2.12
//    mask_expression();

    // Check shift by large number
//    int x = 0x12345678;
//    printf("Shift right x >> 32 = %p\n", (x >> 32));
//    printf("Shift left x << 32 = %p\n", (x << 32));
//    printf("Shift right x >> 48 = %p\n", (x >> 48));
//    printf("Shift left x << 48 = %p\n", (x << 48));

    // Check shift operator precedence
//    printf("result = %d", 1 << 2 + 3 << 4);

    // Check limits
//    printf("INT_MAX = %d\n", INT_MAX);
//    printf("INT_MIN = %d\n", INT_MIN);
//    printf("UINT_MAX = %u\n", UINT_MAX);
//
//    // Check limits exact size
//    printf("INT16_MAX = %d\n", INT16_MAX);
//    printf("INT16_MIN = %d\n", INT16_MIN);
//    printf("INT64_MAX = %lld\n", INT64_MAX);
//    printf("INT64_MIN = %lld\n", INT64_MIN);
//    printf("UINT64_MAX = %llu\n", UINT64_MAX);

    // Check cast sign <-> unsigned
//    short v = -12345;
//    unsigned short uv = (unsigned short) v;
//    printf("v = %d, uv = %u\n", v, uv);
//
//    int x = -1;
//    unsigned u = 2147483648;
//    printf("x = %u, x = %d\n", x ,x);
//    printf("u = %u, u = %d\n", u , u);
//
//    printf("-1 < 0U = %d", -1 < 0u);

//    printf("-2147483647-1U = %u\n", -2147483647-1U);
//    printf("-2147483647 = %u\n", -2147483647);
//    evaluate_cast_exp();

//    evaluate_test();

    // Check sign extension
//    evaluate_sign_extension();

    // Check sum_elements (practice problem 2.25)
//    float   a[] = { 1.0f, 2.0f };
//    float   sum;
//    sum = sum_elements(a, 0);
//    printf("sum = %f\n", sum);

    // Check strlonger (practice problem 2.26)
//    char *a = "love";
//    char *b = "len";
//    printf("strlonger(a, b) = %d\n", strlonger(a, b));
//    printf("strlonger(b, a) = %d\n", strlonger(b, a));

    // Check uadd_ok (practice problem 2.27)
//    printf("0x80000000 + 0x80000000 : uadd_ok = %d\n", uadd_ok(0x80000000, 0x80000000));
//    printf("0x80000001 + 0x80000000 : uadd_ok = %d\n", uadd_ok(0x80000001, 0x80000000));
//    printf("1 + 2 : uadd_ok = %d\n", uadd_ok(1, 2));

    // Check tadd_ok (practice problem 2.30)
//    int sum = -2147483648 + (-10);
//    printf("sum - (-10) = %d\n", sum - (-10));
//    printf("sum - (-2147483648) = %d\n", sum - (-2147483648));
//    printf("-2147483648 + (-10) = %d\n", -2147483648 + (-10));
//    printf("2147483647 + 100 = %d\n", 2147483647 + 100);
//    printf("-2147483648 + (-10) : tadd_ok = %d\n", tadd_ok(-2147483648, -10));
//    printf("2147483647 + 100 : tadd_ok = %d\n", tadd_ok(2147483647, 100));
//    printf("2 + 3 : tadd_ok = %d\n", tadd_ok(2, 3));

    // Check tmul_ok (practice problem 2.36)
//    printf("sizeof(long long) = %d\n", sizeof(long long));
//    printf("0x80000001 * 0x20 : tmul_ok = %d\n", tmul_ok(0x80000001, 0x20));
//    printf("0x8001 * 0x20: tmul_ok = %d\n", tmul_ok(0x8001, 0x20));

    // Check copy_elements (practice problem 2.37)
//    unsigned char buf[4096 * 2];
//    void *result = copy_elements_fix(buf, 1048577, 4096);
//    printf("copy OK, %p\n", result);

    // Check negative division
//    printf("-6.24/2 = %d", (int) (-6.24/2));

    // Check practice problem 2.44
//    evaluate_2_44();

    // Check practice problem 2.53
//    macro_floating_point();

    // Check practice problem 2.54
//    conversion_floating_point();

    // Check homework problem 2.58
//    printf("is_little_endian() = %d\n", is_little_endian());

    // Check homework problem 2.59
//    printf("merge: x = 0x89ABCDEF & y = 0x76543210 => 0x%X\n", merge_word(0x89ABCDEF, 0x76543210));

    // Check homework problem 2.60
//    printf("replace_byte(0x12345678, 2, 0xAB) => 0x%X\n", replace_byte(0x12345678, 2, 0xAB));
//    printf("replace_byte(0x12345678, 0, 0xAB) => 0x%X\n", replace_byte(0x12345678, 0, 0xAB));

    // Check homework problem 2.61
//    printf("check_bits_261_A(2) = %d\n", check_bits_261_A(2));
//    printf("check_bits_261_A(0) = %d\n", check_bits_261_A(0));
//    printf("check_bits_261_B(3) = %d\n", check_bits_261_B(3));
//    printf("check_bits_261_B(-1) = %d\n", check_bits_261_B(-1));
//    printf("check_bits_261_C(0xFF02) = %d\n", check_bits_261_C(0xFF02));
//    printf("check_bits_261_C(0xFF00) = %d\n", check_bits_261_C(0xFF00));
//    printf("check_bits_261_D(0x03FFFFFF) = %d\n", check_bits_261_D(0x03FFFFFF));
//    printf("check_bits_261_D(0xFFFFFFFF) = %d\n", check_bits_261_D(0xFFFFFFFF));

    // Check homework problem 2.62
//    printf("is_shifts_are_arithmetic(): %d\n", is_shifts_are_arithmetic());

    // Check homework problem 2.63
//    printf("srl(0xFFAB0000, 2 << 3) = 0x%X\n", srl(0xFFAB0000, 2 << 3));
//    printf("srl(0xFFAB0000, 0) = 0x%X\n", srl(0xFFAB0000, 0));
//
//    printf("sra(0xFFAA0000, 2 << 3) = 0x%X\n", sra(0xFFAA0000, 2 << 3));
//    printf("sra(0xFFAA0000, 0) = 0x%X\n", sra(0xFFAA0000, 0));
//
//    printf("sra1(0xFFAA0000, 2 << 3) = 0x%X\n", sra1(0xFFAA0000, 2 << 3));
//    printf("sra1(0xFFAA0000, 0) = 0x%X\n", sra1(0xFFAA0000, 0));

    // Check homework problem 2.64
//    printf("any_odd_one(0) = %d\n", any_odd_one(0));
//    printf("any_odd_one(1) = %d\n", any_odd_one(1));
//    printf("any_odd_one(2) = %d\n", any_odd_one(2));

    // Check homework problem 2.65
//    printf("odd_ones(0xF0) = %d\n", odd_ones(0xF0));
//    printf("odd_ones(0xF1) = %d\n", odd_ones(0xF1));
//    printf("odd_ones(0xFF0) = %d\n", odd_ones(0xFF0));
//    printf("odd_ones(0xFF1) = %d\n", odd_ones(0xFF1));
//    printf("odd_ones(0xFF20) = %d\n", odd_ones(0xFF20));
//    printf("odd_ones(0xFF21) = %d\n", odd_ones(0xFF21));
//    printf("odd_ones(0xFFFFFFF0) = %d\n", odd_ones(0xFFFFFFF0));
//    printf("odd_ones(0xFFFFFFF1) = %d\n", odd_ones(0xFFFFFFF1));

    // Check homework problem 2.66
//    printf("leftmost_one(0) = 0x%X\n", leftmost_one(0));
//    printf("leftmost_one(1) = 0x%X\n", leftmost_one(1));
//    printf("leftmost_one(2) = 0x%X\n", leftmost_one(2));
//    printf("leftmost_one(0x6600) = 0x%X\n", leftmost_one(0x6600));
//    printf("leftmost_one(0xFF00) = 0x%X\n", leftmost_one(0xFF00));

    // Check homework problem 2.67
//    printf("int_size_is_32() = %d\n", int_size_is_32());

    // Check homework problem 2.68
//    printf("lower_one_mask(1) = 0x%X\n", lower_one_mask(1));
//    printf("lower_one_mask(6) = 0x%X\n", lower_one_mask(6));
//    printf("lower_one_mask(17) = 0x%X\n", lower_one_mask(17));
//    printf("lower_one_mask(sizeof(int) << 3) = 0x%X\n", lower_one_mask(sizeof(int) << 3));

    // Check homework problem 2.69
//    printf("rotate_left(0x12345678, 0) = 0x%X\n", rotate_left(0x12345678, 0));
//    printf("rotate_left(0x12345678, 4) = 0x%X\n", rotate_left(0x12345678, 4));
//    printf("rotate_left(0x12345678, 20) = 0x%X\n", rotate_left(0x12345678, 20));

    // Check homework problem 2.70
//    printf("fits_bits(-5, 3) = %d\n", fits_bits(-5, 3));
//    printf("fits_bits(-5, 4) = %d\n", fits_bits(-5, 4));
//    printf("fits_bits(-5, 32) = %d\n", fits_bits(-5, 32));
//    printf("fits_bits(0, 1) = %d\n", fits_bits(0, 1));

    // Check homework problem 2.71
//    printf("xbyte(-1, 0) = %d\n", xbyte(-1, 0));
//    printf("xbyte_corrected(-1, 0) = %d\n", xbyte_corrected(-1, 0));
//    printf("xbyte(0xFE, 0) = %d\n", xbyte(0xFE, 0));
//    printf("xbyte_corrected(0xFE, 0) = %d\n", xbyte_corrected(0xFE, 0));

    // Check homework problem 2.72
//    printf("0 - (int) sizeof(int) >= 0 : %d\n", (0 - (int) sizeof(int) >= 0));

    // Check homework problem 2.73
//    printf("-1 -INT_MIN = %d\n", (int) (-1 - INT_MIN));
//    printf("INT_MIN = %d\n", INT_MIN);
//    printf("INT_MAX = %d\n", (int) ~INT_MIN);
//    printf("from_sign_bit_get_max_min(1) = %d\n", from_sign_bit_get_max_min(1));
//    printf("from_sign_bit_get_max_min(-1) = %d\n", from_sign_bit_get_max_min(-1));
//    printf("saturating_add(-2, INT_MIN) = %d\n", saturating_add(-2, INT_MIN));
//    printf("saturating_add(2, INT_MAX) = %d\n", saturating_add(2, INT_MAX));
//    printf("my_saturating_add(-2, INT_MIN) = %d\n", my_saturating_add(-2, INT_MIN));
//    printf("my_saturating_add(2, INT_MAX) = %d\n", my_saturating_add(2, INT_MAX));

    // Check homework problem 2.74
//    printf("tsub_ovf(1, -INT_MAX) = %d\n", tsub_ovf(1, -INT_MAX));
//    printf("tsub_ovf(-1, INT_MIN) = %d\n", tsub_ovf(-1, INT_MIN));
//    printf("tsub_ovf(3, INT_MIN) = %d\n", tsub_ovf(3, INT_MIN+1));
//
//    printf("tsub_ok(1, -INT_MAX) = %d\n", tsub_ok(1, -INT_MAX));
//    printf("tsub_ok(-1, INT_MIN) = %d\n", tsub_ok(-1, INT_MIN));
//    printf("tsub_ok(3, INT_MIN) = %d\n", tsub_ok(3, INT_MIN+1));

    // Check homework problem 2.77
//    printf("divide_power2(4, 1) = %d\n", divide_power2(4, 1));
//    printf("divide_power2(5, 1) = %d\n", divide_power2(5, 1));
//    printf("divide_power2(-5, 1) = %d\n", divide_power2(-5, 1));

    // Check homework problem 2.78
//    printf("INT_MAX = %d\n", INT_MAX);
//    printf("mul3div4(4) = %d\n", mul3div4(4));
//    printf("mul3div4(6) = %d\n", mul3div4(6));
//    printf("mul3div4(-6) = %d\n", mul3div4(-6));
//    printf("mul3div4(INT_MAX) = %d\n", mul3div4(INT_MAX));

    // Check homework problem 2.79
//    printf("threefourths(4) = %d\n", threefourths(4));
//    printf("threefourths(6) = %d\n", threefourths(6));
//    printf("threefourths(-6) = %d\n", threefourths(-6));
//    printf("threefourths(INT_MAX-1) = %d\n", threefourths(INT_MAX-1));

    // Check homework problem 2.80
//    printf("gen_bit_A(5) = 0x%X\n", gen_bit_A(5));
//    printf("gen_bit_B(3, 5) = 0x%X\n", gen_bit_B(3, 5));

    // Check homework problem 2.81
//    test_exp_281();

    // Check homework problem 2.91
//    test_float_negate_291();

    // Check homework problem 2.92
//    test_float_absval_292();

    // Check homework problem 2.93
//    test_float_twice_293();

    // Check homework problem 2.94
//    test_float_half_294();

    // Check homework problem 2.95
//    test_float_f2i_295();

    // Check homework problem 2.96
    test_float_i2f_296();
}
