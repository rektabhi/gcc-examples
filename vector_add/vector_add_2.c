#include<stdio.h>

// Compile to assembly using:
// gcc -O3 -S vector_add_2.c -o vector_add_2_with_optimisation.s

void add(int a[], int b[], int c[], int n) {
    int i = 0;
    for (i=0; i<n; i++) {
        c[i] = a[i] + b[i];
    }
    for (i=0; i<n; i++) {
        printf("%d\n", c[i]);
    }

}

int main() {
    int i, n = 5;
    int a[n], b[n], c[n];
    for (i=0; i<n; i++) {
        a[i] = i;
        b[i] = 2*i;
    }
    add(a, b, c, 5);
    return 0;
}
