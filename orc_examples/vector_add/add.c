#include <stdio.h>
#include "add_generated_header.h"

#define N 10

short a[N];
short b[N];
short c[N];

int main (int argc, char *argv[]) {
  int i;

  /* Create some data in the source arrays */
  for(i=0;i<N;i++){
    a[i] = 100*i;
    b[i] = 32000;
  }

  /* Call a function that uses Orc */
  vector_add (c, a, b, N);

  /* Print the results */
  for(i=0;i<N;i++){
    printf("%d: %d %d -> %d\n", i, a[i], b[i], c[i]);
  }

  return 0;
}
