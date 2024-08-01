#include <stdio.h>
#include <stdlib.h>
#include "mmio.h"
#include <emmintrin.h>  // Header for SSE2 intrinsics
#include <time.h>
#include <stdint.h>

double get_cpu_frequency() {
    // You need to determine the CPU frequency of your system.
    // For demonstration purposes, assuming a frequency of 2.4 GHz.
    // You should replace this value with the actual frequency of your CPU.
    return 2.4e9; // 2.4 GHz
}

uint64_t rdtsc() {
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}

// Structure to represent CSR format
typedef struct {
    int rows;
    int cols;
    int nnz;  // Number of non-zero elements
    double *values;  // Array of non-zero values
    int *row_indices;  // Array of row values of that particular column
    int *column_ptrs;  // Array of column pointers cumulative
    int *column_indices; // This is just equal to J
} CSCMatrix;

void csc_matrix_vector_sse(CSCMatrix A, double *Output_vector, double *Value_vector, double *val) {
    // Initialize SIMD registers
    __m128d vec_val, vec_value_vector, vec_result;
    
    for (int j = 0; j < A.rows; j++) {
        vec_result = _mm_setzero_pd(); // Initialize result vector to zero

        for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i++) {
            vec_value_vector = _mm_set1_pd(Value_vector[i]); // Load scalar Value_vector[i] into SIMD register
            vec_val = _mm_set1_pd(val[i]); // Load scalar val[i] into SIMD register
            
            vec_result = _mm_add_pd(vec_result, _mm_mul_pd(vec_value_vector, vec_val)); // Accumulate result
        }

        // Store the result from SIMD register to Output_vector
        double result_array[2];
        _mm_storeu_pd(result_array, vec_result);
        Output_vector[j] += result_array[0] + result_array[1];
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

    I = (int *)malloc(nz * sizeof(int)); // I is the row values
    J = (int *)malloc(nz * sizeof(int)); // J is the column values as it is rep in CSC format so for particular this column these row I values change
    val = (double *)malloc(nz * sizeof(double)); // val is the data at these locations in which is non-zero
    vector_val = (double *)malloc(nz * sizeof(double)); // Specialized vector values for specific val values in the matrix

    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--; // Adjust from 1-based to 0-based
        J[i]--; // Because C is 0 based and the values provided in matrix market are 1 based
    }

    // Construct CSR matrix
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
    A.column_ptrs[N] = nz; // End pointer

    double *Input_vector = (double *)malloc(N * sizeof(double));
    double *Output_vector = (double *)malloc(M * sizeof(double));

    // Initialize input vector to random values
    for (int i = 0; i < N; i++) {
        Input_vector[i] = (double)rand() / RAND_MAX * 10.0;
    }

    // Initialize vector_val to zero
    for (int i = 0; i < nz; i++) {
        vector_val[i] = 0.0;
    }

    // Initialize Output_vector to all zeros
    for (int i = 0; i < M; i++) {
        Output_vector[i] = 0.0;
    }


    double cpu_freq = get_cpu_frequency();

    uint64_t start_time1 = rdtsc();
    Value_vector(A, Input_vector, vector_val);

    uint64_t end_time1 = rdtsc();
    double elapsed_time1 = (double)(end_time1 - start_time1) / cpu_freq;
    printf("Time elapsed to form the new vector is : %f seconds\n", elapsed_time1);

    uint64_t start_time2 = rdtsc();
    csc_matrix_vector_sse(A, Output_vector, vector_val, val);

    uint64_t end_time2 = rdtsc();
    double elapsed_time2 = (double)(end_time2 - start_time2) / cpu_freq;
    printf("Time elapsed for multiplying and adding both: %f seconds\n", elapsed_time2);

    
    double elapsed_time = elapsed_time1+elapsed_time2;
     printf("Total time elapsed: %f seconds\n", elapsed_time);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d\n", M, N, nz);

    // Free allocated memory
    free(I);
    free(J);
    free(val);
    free(vector_val);
    free(Output_vector);
    free(Input_vector);
    free(A.column_ptrs);

    return 0;
}
