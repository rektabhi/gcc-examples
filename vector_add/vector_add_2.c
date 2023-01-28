#include<stdio.h>

// Compile to assembly using:
// gcc -O3 -S vector_add_2.c -o vector_add_2_with_optimisation.s
int main() {
    int a[] = {1, 2, 3, 4, 5};
    int b[] = {2, 2, 3, 4, 5};
    int c[] = {1, 2, 3, 4, 5};
    int i = 0;
    for (i=0; i<5; i++) {
        c[i] = a[i] + b[i];
    }
    for (i=0; i<5; i++) {
        printf("%d\n", c[i]);
    }
    return 0;
}