#include <stdio.h>
#include <stdlib.h>
#include "mmio.h"
#include <time.h>
#include <stdint.h>
#include <immintrin.h>  // AVX intrinsics

double get_cpu_frequency() {
    return 2.4e9; // 2.4 GHz (replace with the actual frequency if needed)
}

uint64_t rdtsc() {
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}

// Structure to represent CSC format
typedef struct {
    int rows;
    int cols;
    int nnz;  // Number of non-zero elements
    double *values;  // Array of non-zero values
    int *row_indices;  // Array of row indices for each column
    int *column_ptrs;  // Array of column pointers (cumulative)
    int *column_indices; // Array of column indices (just equal to J)
} CSCMatrix;

void csc_matrix_vector_avx(CSCMatrix A, double *Output_vector, double *Value_vector, double *val) {
    for (int j = 0; j < A.rows; j++) {
        __m256d vec_result = _mm256_setzero_pd(); // Initialize result vector to zero

        // Process elements in chunks of 4
        int i;
        for (i = A.column_ptrs[j]; i <= A.column_ptrs[j + 1] - 4; i += 4) {
            __m256d vec_value_vector = _mm256_loadu_pd(&Value_vector[i]);
            __m256d vec_val = _mm256_loadu_pd(&val[i]);

            vec_result = _mm256_add_pd(vec_result, _mm256_mul_pd(vec_value_vector, vec_val));
        }

        // Handle remaining elements
        for (; i < A.column_ptrs[j + 1]; i++) {
            Output_vector[j] += Value_vector[i] * val[i];
        }

        // Perform horizontal addition using shuffle and add
        __m256d temp = _mm256_hadd_pd(vec_result, vec_result); // [a0+a1, a2+a3, a0+a1, a2+a3]
        vec_result = _mm256_hadd_pd(temp, temp);               // [a0+a1+a2+a3, a0+a1+a2+a3, a0+a1+a2+a3, a0+a1+a2+a3]

        // Extract the lower 128 bits to get the final sum
        double result = _mm_cvtsd_f64(_mm256_castpd256_pd128(vec_result));

        // Store the result in the output vector
        Output_vector[j] += result;
    }
}

void Value_vector(CSCMatrix A, double *initVal, double *modifiedVal) {
    for (int i = 0; i < A.nnz; i++) {
        modifiedVal[i] = initVal[A.column_indices[i]];
    }
}

int main(int argc, char *argv[]) {
    int ret_code;
    MM_typecode matcode;
    FILE *f;
    int M, N, nz;
    int *I, *J;
    double *val;
    double *vector_val;

    if (argc < 2) {
        fprintf(stderr, "Usage: %s [matrix-market-filename]\n", argv[0]);
        exit(1);
    } else {
        if ((f = fopen(argv[1], "r")) == NULL)
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
    vector_val = (double *)malloc(nz * sizeof(double));

    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
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
    A.column_ptrs[N] = nz;  // End pointer

    double *Input_vector = (double *)malloc(N * sizeof(double));
    double *Output_vector = (double *)malloc(M * sizeof(double));

    // Initialize input vector with random values
    for (int i = 0; i < N; i++) {
        Input_vector[i] = (double)rand() / RAND_MAX * 10.0;
    }

    // Initialize vector_val and Output_vector to zero
    for (int i = 0; i < nz; i++) {
        vector_val[i] = 0.0;
    }
    for (int i = 0; i < M; i++) {
        Output_vector[i] = 0.0;
    }

  
    double cpu_freq = get_cpu_frequency();

    uint64_t start_time1 = rdtsc();
    Value_vector(A, Input_vector, vector_val);
    uint64_t end_time1 = rdtsc();
    double elapsed_time1 = (double)(end_time1 - start_time1) / cpu_freq;
    printf("Time elapsed to form the new vector is: %f seconds\n", elapsed_time1);

    uint64_t start_time2 = rdtsc();
    csc_matrix_vector_avx(A, Output_vector, vector_val, val);
    uint64_t end_time2 = rdtsc();
    double elapsed_time2 = (double)(end_time2 - start_time2) / cpu_freq;
    printf("Time elapsed for multiplying and adding both: %f seconds\n", elapsed_time2);

    
    printf("Total time elapsed: %f seconds\n", elapsed_time1+elapsed_time2);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d\n", M, N, nz);

    // Clean up
    free(I);
    free(J);
    free(val);
    free(vector_val);
    free(Input_vector);
    free(Output_vector);
    free(A.column_ptrs);

    return 0;
}