/*#include <stdio.h>
#include "mkl.h"
#include <mkl_cblas.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

double get_cpu_frequency() {
    return 2.4e9; // 2.4 GHz
}

uint64_t rdtsc() {
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}

int main() {
    int dim;

    printf("Enter the dimension of the vectors calloc rdtsc: ");
    scanf("%d", &dim);

    double *A = (double *)malloc(dim * sizeof(double));
    double *B = (double *)malloc(dim * sizeof(double));
    double *result = (double *)malloc(dim * sizeof(double));

    srand(time(NULL));
    for (int i = 0; i < dim; i++) {
        A[i] = (double)rand() / RAND_MAX * 10.0;
        B[i] = (double)rand() / RAND_MAX * 10.0;
    }

    double cpu_freq = get_cpu_frequency();

    uint64_t start_time1 = rdtsc();
    for (int i = 0; i < dim; i++) {
        result[i] = A[i] * B[i];
    } 
    uint64_t end_time1 = rdtsc();
    double elapsed_time1 = (double)(end_time1 - start_time1) / cpu_freq;
    printf("Elapsed time WITHOUT MKL is %e\n", elapsed_time1);

    uint64_t start_time2 = rdtsc();
    double resultMKL = cblas_ddot(dim, A, 1, B, 1);
    uint64_t end_time2 = rdtsc();
    double elapsed_time2 = (double)(end_time2 - start_time2) / cpu_freq;
    printf("Elapsed time WITH MKL is %f\n", elapsed_time2);

    free(A);
    free(B);
    free(result);

    return 0;
}*/

/*gcc -o MKLvector.exe vectorMulMKL.c -I"C:\Program Files (x86)\Intel\oneAPI\mkl\latest\include" -L"C:\Program Files (x86)\Intel\oneAPI\mkl\latest\lib" -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lm*/





#include <stdio.h>
#include <mkl.h>
#include <mkl_cblas.h>
#include <stdlib.h>
#include <time.h>

#ifdef _WIN32
#include <windows.h>
double get_time()
{
    LARGE_INTEGER t, f;
    QueryPerformanceCounter(&t);
    QueryPerformanceFrequency(&f);
    return (double)t.QuadPart/(double)f.QuadPart;
}
#else
#include <sys/time.h>
double get_time()
{
    struct timeval t;
    gettimeofday(&t, NULL);
    return t.tv_sec + t.tv_usec*1e-6;
}
#endif

#define ITERATIONS 100

int main() {
    int dim;
    printf("Enter the dimension of the vectors: ");
    scanf("%d", &dim);

    double *A = (double *)malloc(dim * sizeof(double));
    double *B = (double *)malloc(dim * sizeof(double));
    double result = 0.0;

    srand(time(NULL));
    for (int i = 0; i < dim; i++) {
        A[i] = (double)rand() / RAND_MAX * 10.0;
        B[i] = (double)rand() / RAND_MAX * 10.0;
    }

    // Normal dot product
    double start_time1 = get_time();
    for (int iter = 0; iter < ITERATIONS; iter++) {
        result = 0.0;
        for (int i = 0; i < dim; i++) {
            result += A[i] * B[i];
        }
    }
    double end_time1 = get_time();
    double elapsed_time1 = (end_time1 - start_time1) / ITERATIONS;
    printf("Average time WITHOUT MKL: %e seconds\n", elapsed_time1);

    // MKL version
    double start_time2 = get_time();
    for (int iter = 0; iter < ITERATIONS; iter++) {
        result = cblas_ddot(dim, A, 1, B, 1);
    }
    double end_time2 = get_time();
    double elapsed_time2 = (end_time2 - start_time2) / ITERATIONS;
    printf("Average time WITH MKL: %e seconds\n", elapsed_time2);

    printf("Speedup: %.2f\n", elapsed_time1 / elapsed_time2);

    free(A);
    free(B);

    return 0;
}



//icx -O0 -Qmkl vectorMulMKL.c -o MKLvector.exe
//using -O0 compiler doesn't optimize away the calculations