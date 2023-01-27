#include<stdio.h>

int main() {
    int a[] = {1, 2, 3, 4, 5};
    int b[] = {1, 2, 3, 4, 5};
    int c[] = {1, 2, 3, 4, 5};
    int i = 0;
    for (i=0; i<5; i++) {
        c[i] = a[i] + b[i];
    }
    return 0;
}