#include <stdio.h>
#include <stdlib.h>
#include "mmio.h"
#include <time.h>
#include <stdint.h>
#include <immintrin.h> // AVX

float get_cpu_frequency() {
    return 2.4e9; // 2.4 GHz
}

uint64_t rdtsc() {
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}

typedef struct {
    int rows;
    int cols;
    int nnz;
    float *values;
    int *row_indices;
    int *column_ptrs;
} CSCMatrix;

void converDoubleToFloat(double *val, float *val_float, int nz) {
    for (int i = 0; i < nz; i++) {
        val_float[i] = (float)val[i];
    }
}



//#include <immintrin.h> // AVX

void csc_matrix_vector_product_avx(CSCMatrix A, float *x, float *y) {
    for (int j = 0; j < A.cols; j++) {
        __m256 x_vec = _mm256_set1_ps(x[j]);
        for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i += 8) {
            int remaining = A.column_ptrs[j + 1] - i;
            if (remaining >= 8) {
                __m256 val_vec = _mm256_loadu_ps(&A.values[i]);
                __m256 row_vec = _mm256_set_ps(y[A.row_indices[i+7]], y[A.row_indices[i+6]],
                                               y[A.row_indices[i+5]], y[A.row_indices[i+4]],
                                               y[A.row_indices[i+3]], y[A.row_indices[i+2]],
                                               y[A.row_indices[i+1]], y[A.row_indices[i]]);
                __m256 result = _mm256_add_ps(row_vec, _mm256_mul_ps(val_vec, x_vec));
                y[A.row_indices[i]] += result[0];
                y[A.row_indices[i+1]] += result[1];
                y[A.row_indices[i+2]] += result[2];
                y[A.row_indices[i+3]] += result[3];
                y[A.row_indices[i+4]] += result[4];
                y[A.row_indices[i+5]] += result[5];
                y[A.row_indices[i+6]] += result[6];
                y[A.row_indices[i+7]] += result[7];
            } else {
                for (int k = 0; k < remaining; k++) {
                    y[A.row_indices[i + k]] += A.values[i + k] * x[j];
                }
            }
        }
    }
}


int main(int argc, char *argv[]) {
    int ret_code;
    MM_typecode matcode;
    FILE *f;
    int M, N, nz;
    int *I, *J;
    double *val;
    float *val_float;
    //int err;

    if (argc < 2) {
        fprintf(stderr, "Usage: %s [matrix-market-filename]\n", argv[0]);
        exit(1);
    } else {
        if ((f = fopen( argv[1], "r")) == 0)
            exit(1);
    }

    
    //f = fopen("C:/Users/DELL/Downloads/nos5.mtx/nos5.mtx", "r");

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

    I = (int *)malloc(nz * sizeof(int));        // I is the row values
    J = (int *)malloc(nz * sizeof(int));        // J is the column values as it is rep in CSC format so for particular this column these row I values change
    val = (double *)malloc(nz * sizeof(double));    // val is the data at these locations in which is non-zero
    val_float = (float *)malloc(nz * sizeof(float));


    float cpu_freq = get_cpu_frequency();
    uint64_t start_time6=rdtsc();

    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  // Adjust from 1-based to 0-based
        J[i]--;  // coz C is 0 based and the values provided in matrix market is 1 based
    }
    uint64_t end_time6=rdtsc(); 
    float elapsed_time6 = (float)(end_time6 - start_time6) / cpu_freq;
    printf("Time required only for scanning %f\n", elapsed_time6);
    


    uint64_t start_time5 = rdtsc();


    converDoubleToFloat(val, val_float, nz);

    uint64_t end_time5 = rdtsc();
    float elapsed_time5 = (float)(end_time5 - start_time5) / cpu_freq;

    printf("Time elapsed to convert double to float: %f seconds\n", elapsed_time5);



    // Construct CSR matrix
    CSCMatrix A;
    A.rows = M;
    A.cols = N;
    A.nnz = nz;
    A.values = val_float;
    A.row_indices = I;
    A.column_ptrs = (int *)malloc((A.cols + 1) * sizeof(int));
    float* dense_matrix = NULL;

    int current_column = 0;
    A.column_ptrs[0] = 0;
    for (int i = 0; i < nz; i++) {
        if (J[i] != current_column) {
            current_column = J[i];
            A.column_ptrs[current_column] = i;
        }
    }
    A.column_ptrs[N] = nz;  // End pointer

    //printf("ASSIGNING THE ROW VALUES DONE\n");

    float *Input_vector = (float *)malloc(N * sizeof(float));
    float *Output_vector = (float *)malloc(M * sizeof(float));

    float k;

    // Initialize input vector to all 1s
    for (int i = 0; i < N; i++) {
        //Input_vector[i] = 1.0;
        //(float)rand() / RAND_MAX * 10.0; for random numbers in input vector
        Input_vector[i] = k;
        k=k+10;
    }


    // Initialize Output_vector to all zeros coz before performing the matrix-vector product, you ensure that all elements of the result vector are properly accumulated
    for (int i = 0; i < M; i++) {
        Output_vector[i] = 0.0;
    }

    uint64_t start_time = rdtsc();

    csc_matrix_vector_product_avx(A, Input_vector, Output_vector);

    uint64_t end_time = rdtsc();
    float elapsed_time = (float)(end_time - start_time) / cpu_freq;

    printf("Time elapsed for multiplying and adding both: %f seconds\n",elapsed_time);
    printf("Total time elapsed: %f seconds\n", elapsed_time+elapsed_time5+elapsed_time6);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d \n", M, N, nz);


    free(I);
    free(J);
    free(val);
    free(val_float);
    free(Input_vector);
    free(Output_vector);
    free(A.column_ptrs);

    return 0;
    
}