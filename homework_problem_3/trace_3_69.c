/*
 * trace_3_69.c
 * Homework problem 3.70 in book: CS APP 2e
 *
 *  Created on: Jul 31, 2015
 *      Author: adminuser
 */

#include <stdio.h>
#include <limits.h>

typedef struct ELE *tree_ptr;

struct ELE {
    long val;
    tree_ptr left;
    tree_ptr right;
};

// Trace and return rightmost value of the tree
long trace(tree_ptr tp)
{
    if (tp != NULL) {
        long ret;
        while (tp != NULL) {
            ret = tp->val;
            tp = tp->right;
        }
        printf("Rightmost value is %d\n", ret);
        return ret;
    }
    return 0;
}

void test_trace_3_69()
{
    /**
         * Prepare the below tree
         *                  7
         *                /   \
         *               9     4
         *              / \   / \
         *             10 11 15  3
         */
        struct ELE ele_10 = { 10, NULL, NULL };
        struct ELE ele_11 = { 11, NULL, NULL };
        struct ELE ele_15 = { 15, NULL, NULL };
        struct ELE ele_3 = { 3, NULL, NULL };
        struct ELE ele_9 = { 9, &ele_10, &ele_11 };
        struct ELE ele_4 = { 4, &ele_15, &ele_3 };
        struct ELE ele_7 = { 7, &ele_9, &ele_4 };

        trace(&ele_7);
}
