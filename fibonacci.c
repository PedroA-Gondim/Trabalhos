#include <stdio.h>

int main(void) {
  int a = 0, b = 1, auxiliar, n = 20;
  for(int i = 0; i<n; i++){
    auxiliar = a+b;
    a = b;
    printf("%d ",b);
    b = auxiliar;
  }
  return 0;
}