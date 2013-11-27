/*
 * Teste da nova chamada de sistema
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
  int k;
  int r;
  scanf("%d", &k);
  r = syscall(351, k);
  printf("Retorno da chamada de sistema: %d.\n", r);
  return 0;
}
