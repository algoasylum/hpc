#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <mkl.h>

void print_matrix(const char *name, double *matrix, int rows, int cols) {
    printf("%s:\n", name);
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            printf("%f ", matrix[i * cols + j]);
        }
        printf("\n");
    }
}

int main() {
    const int M = 2; // Number of rows in A and C
    const int N = 3; // Number of columns in B and C
    const int K = 4; // Number of columns in A and rows in B

    // Allocate memory for matrices
    double *A = (double *)malloc(M * K * sizeof(double));
    double *B = (double *)malloc(K * N * sizeof(double));
    double *C = (double *)malloc(M * N * sizeof(double));

    // Initialize random number generator
    srand(time(NULL));

    // Fill matrices A and B with random values
    for (int i = 0; i < M * K; ++i) {
        A[i] = (double)rand() / RAND_MAX * 10.0;
    }
    for (int i = 0; i < K * N; ++i) {
        B[i] = (double)rand() / RAND_MAX * 10.0;
    }

    // Set matrix C to zero
    for (int i = 0; i < M * N; ++i) {
        C[i] = 0.0;
    }

    // Print matrices A and B
    print_matrix("Matrix A", A, M, K);
    print_matrix("Matrix B", B, K, N);

    // Perform matrix multiplication: C = alpha * A * B + beta * C
    double alpha = 1.0;
    double beta = 0.0;
    cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, M, N, K, alpha, A, K, B, N, beta, C, N);

    // Print the result matrix C
    print_matrix("Result Matrix C", C, M, N);

    // Free allocated memory
    free(A);
    free(B);
    free(C);

    return 0;
}
