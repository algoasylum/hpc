#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <time.h>
#include <windows.h>
#include <mkl.h>
#include <mkl_cblas.h>
#include <math.h>
#include <immintrin.h>  // AVX intrinsics
#include "mmio.h"

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
    int *column_indices;
} CSCMatrix;

void Value_vector(CSCMatrix A, double *initVal, double *modifiedVal) {
    for(int i = 0; i < A.nnz; i++) {
        modifiedVal[i] = initVal[A.column_indices[i]];
    }
}

void csc_matrix_vector_avx(CSCMatrix A, double *Output_vector, double *Value_vector, double *val) {
    __m256d vec_val, vec_value_vector, vec_result;
    
    for (int j = 0; j < A.rows; j++) {
        vec_result = _mm256_setzero_pd(); // Initialize result vector to zero

        for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i += 4) {
            vec_value_vector = _mm256_loadu_pd(&Value_vector[i]); // Load 4 doubles from Value_vector
            vec_val = _mm256_loadu_pd(&val[i]); // Load 4 doubles from val
            
            vec_result = _mm256_add_pd(vec_result, _mm256_mul_pd(vec_value_vector, vec_val)); // Accumulate result
        }

        // Store the result from SIMD register to Output_vector
        double result_array[4];
        _mm256_storeu_pd(result_array, vec_result);
        Output_vector[j] += result_array[0] + result_array[1] + result_array[2] + result_array[3];
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
    A.column_indices = J;
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
    double *Output_vector_avx = (double *)malloc(M * sizeof(double));
    double *Output_vector_mkl = (double *)malloc(M * sizeof(double));
    double *Output_vector_10x_mkl_avx = (double *)malloc(M * sizeof(double));
    double *vector_val = (double *)malloc(nz * sizeof(double));

    // Initialize input vector and output vectors
    for (int i = 0; i < N; i++) {
        Input_vector[i] = (double)rand() / RAND_MAX * 10.0;
    }
    for (int i = 0; i < M; i++) {
        Output_vector_avx[i] = 0.0;
        Output_vector_mkl[i] = 0.0;
        Output_vector_10x_mkl_avx[i]=0.0;
    }
    for (int i = 0; i < nz; i++) {
        vector_val[i] = 0.0;
    }

    // Timing for AVX-optimized SPMV10x
    
    Value_vector(A, Input_vector, vector_val);
    double start_time1 = get_time();
    csc_matrix_vector_avx(A, Output_vector_avx, vector_val, val);
    double end_time1 = get_time();
    double elapsed_time1 = end_time1 - start_time1;



    double start_time3 = get_time();
    double alpha = 1.0;
    double beta = 0.0;
    mkl_dcscmv("N", &M, &N, &alpha, "GXXF", vector_val, A.row_indices, A.column_ptrs, A.column_ptrs+1, Input_vector, &beta, Output_vector_10x_mkl_avx);
    double end_time3 = get_time();
    double elapsed_time3 = end_time3 - start_time3;





    // MKL implementation timing
    double start_time2 = get_time();
    double alpha1 = 1.0;
    double beta1 = 0.0;
    mkl_dcscmv("N", &M, &N, &alpha1, "GXXF", A.values, A.row_indices, A.column_ptrs, A.column_ptrs+1, Input_vector, &beta1, Output_vector_mkl);
    double end_time2 = get_time();
    double elapsed_time2 = end_time2 - start_time2;

    double speedup = elapsed_time3 / elapsed_time2;
    double speedup2=elapsed_time1 / elapsed_time2;
    double speedup3=elapsed_time3 / elapsed_time1;

    printf("AVX-optimized 10x: %e seconds\n", elapsed_time1);
    printf("MKL SPMV NORMAL: %e seconds\n", elapsed_time2);
    printf("MKL AVX 10X %e seconds\n", elapsed_time3);
    printf("Speedup (MKL NORMAL over AVX-MKL 10x): %.2f\n", speedup);
    printf("Speedup (MKL NORMAL over AVX 10x): %.2f\n", speedup2);
    printf("Speedup (MKL-AVX 10X over AVX 10x): %.2f\n", speedup3);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d\n", M, N, nz);

    // Verify results
    double max_diff = 0.0;
    for (int i = 0; i < M; i++) {
        double diff = fabs(Output_vector_avx[i] - Output_vector_mkl[i]);
        if (diff > max_diff) max_diff = diff;
    }
    //printf("Maximum difference between AVX-optimized SPMV10x and MKL results: %e\n", max_diff);

    free(I);
    free(J);
    free(val);
    free(Input_vector);
    free(Output_vector_avx);
    free(Output_vector_mkl);
    free(vector_val);
    free(A.column_ptrs);

    fclose(f);

    return 0;
}


//icx -Qstd=c99 -O0 -QxHost -o MKL-SPMV10X-DOUBLE-AVX mkl-spmv10x-double-avx.c -Qmkl=sequential mmio.c