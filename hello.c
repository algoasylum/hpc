#include <stdio.h>
#include <omp.h>


int main (int argc, char *argv[]) {

  int th_id, nthreads;
  
  
#pragma omp parallel private(th_id)

  //th_id is declared above.  It is is specified as private; so each
  //thread will have its own copy of th_id
  {
    th_id = omp_get_thread_num();
    printf("Hello World from thread %d\n", th_id);
  }
}

//gcc hello.c -o hello -fopenmp