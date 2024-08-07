#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <time.h>
#include "mmio.h"

double get_cpu_frequency() {
    return 2.4e9; // 2.4 GHz
}

uint64_t rdtsc() {
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}

// Structure to represent CSC format for diagonal matrix
typedef struct {
    int size;  // Size of the square diagonal matrix
    double *values;  // Array of non-zero values (diagonal elements)
    int *row_indices;  // Array of row indices (same as column indices for diagonal)
    int *column_ptrs;  // Array of column pointers
} DiagonalCSCMatrix;

void diagonal_csc_matrix_vector(DiagonalCSCMatrix A, double *Output_vector, double *Input_vector) {
    for (int i = 0; i < A.size; i++) {
        Output_vector[i] = A.values[i] * Input_vector[i];
    }
}

int main(int argc, char *argv[]) {
    int ret_code;
    MM_typecode matcode;
    FILE *f;
    int M, N, nz;
    int *I, *J;
    double *val;

    if (argc < 2) {
        fprintf(stderr, "Usage: %s [matrix-market-filename]\n", argv[0]);
        exit(1);
    }

    if ((f = fopen(argv[1], "r")) == NULL) {
        exit(1);
    }

    if (mm_read_banner(f, &matcode) != 0) {
        printf("Could not process Matrix Market banner.\n");
        exit(1);
    }

    if (mm_is_complex(matcode) || !mm_is_matrix(matcode) || !mm_is_sparse(matcode)) {
        printf("Sorry, this application only supports real sparse matrices\n");
        exit(1);
    }

    if ((ret_code = mm_read_mtx_crd_size(f, &M, &N, &nz)) != 0)
        exit(1);

    if (M != N) {
        printf("This application only supports square matrices\n");
        exit(1);
    }

    // Allocate memory for matrix
    I = (int *)malloc(nz * sizeof(int));
    J = (int *)malloc(nz * sizeof(int));
    val = (double *)malloc(nz * sizeof(double));

    // Read matrix from file
    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  // Adjust from 1-based to 0-based
        J[i]--;
    }

    fclose(f);

    // Create diagonal CSC matrix
    DiagonalCSCMatrix A;
    A.size = M;
    A.values = (double *)calloc(M, sizeof(double));
    A.row_indices = (int *)malloc(M * sizeof(int));
    A.column_ptrs = (int *)malloc((M + 1) * sizeof(int));

    // Fill the diagonal matrix
    for (int i = 0; i < nz; i++) {
        if (I[i] == J[i]) {
            A.values[I[i]] = val[i];
        }
    }

    // Set up row_indices and column_ptrs for diagonal matrix
    for (int i = 0; i < M; i++) {
        A.row_indices[i] = i;
        A.column_ptrs[i] = i;
    }
    A.column_ptrs[M] = M;

    double *Input_vector = (double *)malloc(N * sizeof(double));
    double *Output_vector = (double *)malloc(M * sizeof(double));

    // Initialize input vector with random values
    for (int i = 0; i < N; i++) {
        Input_vector[i] = (double)rand() / RAND_MAX * 10.0;
    }

    // Initialize Output_vector to all zeros
    memset(Output_vector, 0, M * sizeof(double));

    double cpu_freq = get_cpu_frequency();

    uint64_t start_time = rdtsc();
    diagonal_csc_matrix_vector(A, Output_vector, Input_vector);
    uint64_t end_time = rdtsc();

    double elapsed_time = (double)(end_time - start_time) / cpu_freq;
    printf("Time elapsed for multiplying and adding both: %f seconds\n", elapsed_time);

    
    printf("Total time elapsed: %f seconds\n",elapsed_time);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d\n", M, N, nz);

    // Free allocated memory
    free(I);
    free(J);
    free(val);
    free(A.values);
    free(A.row_indices);
    free(A.column_ptrs);
    free(Input_vector);
    free(Output_vector);

    return 0;
}