#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include "mmio.h"
#include <time.h>
#include <windows.h>
#include <mkl.h>
#include <mkl_cblas.h>
#include <math.h>

LARGE_INTEGER frequency;

double get_time()
{
    LARGE_INTEGER now;
    QueryPerformanceCounter(&now);
    return (double)now.QuadPart / frequency.QuadPart;
}

// Structure to represent CSC format
typedef struct {
    int rows;
    int cols;
    int nnz;
    double *values;
    int *row_indices;
    int *column_ptrs;
} CSCMatrix;

void csc_matrix_vector_product(CSCMatrix A, double *x, double *y) {
    for (int j = 0; j < A.cols; j++) {
        for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i++) {
            y[A.row_indices[i]] += A.values[i] * x[j];
        }
    }
}

int main(int argc, char *argv[]) {
    QueryPerformanceFrequency(&frequency);

    int ret_code;
    MM_typecode matcode;
    FILE *f;
    int M, N, nz;
    int *I, *J;
    double *val;

    if (argc < 2) {
        fprintf(stderr, "Usage: %s [matrix-market-filename]\n", argv[0]);
        exit(1);
    } else {
        errno_t err = fopen_s(&f, argv[1], "r");
        if (err != 0 || f == NULL)
            exit(1);
    }

    if (mm_read_banner(f, &matcode) != 0) {
        printf("Could not process Matrix Market banner.\n");
        exit(1);
    }

    if (mm_is_complex(matcode) && mm_is_matrix(matcode) && mm_is_sparse(matcode)) {
        printf("Sorry, this application does not support ");
        printf("Market Market type: [%s]\n", mm_typecode_to_str(matcode));
        exit(1);
    }

    if ((ret_code = mm_read_mtx_crd_size(f, &M, &N, &nz)) != 0)
        exit(1);

    I = (int *)malloc(nz * sizeof(int));
    J = (int *)malloc(nz * sizeof(int));
    val = (double *)malloc(nz * sizeof(double));

    for (int i = 0; i < nz; i++) {
        if (fscanf_s(f, "%d %d %lg\n", &I[i], &J[i], &val[i]) != 3) {
            printf("Error reading matrix data\n");
            exit(1);
        }
        I[i]--;
        J[i]--;
    }

    // Construct CSC matrix
    CSCMatrix A;
    A.rows = M;
    A.cols = N;
    A.nnz = nz;
    A.values = val;
    A.row_indices = I;
    A.column_ptrs = (int *)malloc((A.cols + 1) * sizeof(int));

    int current_column = 0;
    A.column_ptrs[0] = 0;
    for (int i = 0; i < nz; i++) {
        if (J[i] != current_column) {
            current_column = J[i];
            A.column_ptrs[current_column] = i;
        }
    }
    A.column_ptrs[N] = nz;

    double *Input_vector = (double *)malloc(N * sizeof(double));
    double *Output_vector = (double *)malloc(M * sizeof(double));
    double *Output_vector_mkl = (double *)malloc(M * sizeof(double));

    // Initialize input vector and output vectors
    for (int i = 0; i < N; i++) {
        Input_vector[i] = (double)rand() / RAND_MAX * 10.0;
    }
    for (int i = 0; i < M; i++) {
        Output_vector[i] = 0.0;
        Output_vector_mkl[i] = 0.0;
    }

    // Custom implementation timing
    double start_time1 = get_time();
    csc_matrix_vector_product(A, Input_vector, Output_vector);
    double end_time1 = get_time();
    double elapsed_time1 = end_time1 - start_time1;

    // MKL implementation timing
    double start_time2 = get_time();
    double alpha = 1.0;
    double beta = 0.0;
    mkl_dcscmv("N", &M, &N, &alpha, "GXXF", A.values, A.row_indices, A.column_ptrs, A.column_ptrs+1, Input_vector, &beta, Output_vector_mkl);
    double end_time2 = get_time();
    double elapsed_time2 = end_time2 - start_time2;

    printf("Time elapsed for custom SPMV: %e seconds\n", elapsed_time1);
    printf("Time elapsed for MKL SPMV: %e seconds\n", elapsed_time2);
    printf("Speedup: %.2f\n", elapsed_time1 / elapsed_time2);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d\n", M, N, nz);

    // Verify results
    /*double max_diff = 0.0;
    for (int i = 0; i < M; i++) {
        double diff = fabs(Output_vector[i] - Output_vector_mkl[i]);
        if (diff > max_diff) max_diff = diff;
    }
    printf("Maximum difference between custom and MKL results: %e\n", max_diff);*/

    free(I);
    free(J);
    free(val);
    free(Input_vector);
    free(Output_vector);
    free(Output_vector_mkl);
    free(A.column_ptrs);

    fclose(f);

    return 0;
}