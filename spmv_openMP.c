#include <stdio.h>
#include <stdlib.h>
#include "mmio.h"
#include <time.h>
#include <stdint.h>
#include <omp.h> // Include OpenMP header


float get_cpu_frequency() {
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
    float *values;  // Array of non-zero values
    int *row_indices;  // Array of row values of that particualr column
    int *column_ptrs;  // Array of cumulative column values
} CSCMatrix;


void converDoubleToFloat(double *val, float *val_float, int nz) {
    #pragma omp parallel for schedule(dynamic) num_threads(4)
    for (int i = 0; i < nz; i++) {
        val_float[i] = (float)val[i];
    }
}

/*void csc_matrix_vector_product(CSCMatrix A, float *x, float *y) {
    //printf("MATRIX VECTOR PDT START \n");
    #pragma omp parallel for collapse(2)
    for (int j = 0; j < A.cols; j++) {
        for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i++) {
            y[A.row_indices[i]] += A.values[i] * x[j];
        }
    }

    /*for(int i = 0; i < A.rows; i++) {
        printf("%f",y[i]);
    }*/
    //printf("MATRIX VECTOR PDT FINSIHED \n");
//}


void csc_matrix_vector_product(CSCMatrix A, float *x, float *y) {
    #pragma omp parallel
    {
        #pragma omp for schedule(static) collapse(2)
        for (int j = 0; j < A.cols; j++) {
            for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i++) {
                #pragma omp atomic
                y[A.row_indices[i]] += A.values[i] * x[j];
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

    if (argc < 2) {
        fprintf(stderr, "Usage: %s [matrix-market-filename]\n", argv[0]);
        exit(1);
    } else {
        if ((f = fopen(argv[1], "r")) == NULL)
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

    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  // Adjust from 1-based to 0-based
        J[i]--;  // coz C is 0 based and the values provided in matrix market is 1 based
    }

    float cpu_freq = get_cpu_frequency();
    uint64_t start_time6 = rdtsc();
    
    converDoubleToFloat(val, val_float, nz);

    uint64_t end_time6 = rdtsc();
    float elapsed_time6 = (float)(end_time6 - start_time6) / cpu_freq;

    printf("Time elapsed for CONVERSION DOUBLE-FLOAT: %f seconds\n", elapsed_time6);


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
    float *Output_vector2 = (float *)malloc(M * sizeof(float));
    float *Output_vector3 = (float *)malloc(M * sizeof(float));
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
        Output_vector2[i] = 0.0;
        Output_vector3[i] = 0.0;
    }


    

    uint64_t start_time1 = rdtsc();

    // Perform matrix-vector product
    csc_matrix_vector_product(A, Input_vector, Output_vector);
    //printf("EXEC OF MATRIX VECTOR PDT COMPLETED \n");

    uint64_t end_time1 = rdtsc();
    float elapsed_time1 = (float)(end_time1 - start_time1) / cpu_freq;

    //printf("Time elapsed for noral SPMV FIRST: %f seconds\n", elapsed_time1);



    uint64_t start_time2 = rdtsc();

    // Perform matrix-vector product
    csc_matrix_vector_product(A, Input_vector, Output_vector2);
    //printf("EXEC OF MATRIX VECTOR PDT COMPLETED \n");

    uint64_t end_time2 = rdtsc();
    float elapsed_time2 = (float)(end_time2 - start_time2) / cpu_freq;

    //printf("Time elapsed for noral SPMV SECOND: %f seconds\n", elapsed_time2);



    uint64_t start_time3 = rdtsc();

    // Perform matrix-vector product
    csc_matrix_vector_product(A, Input_vector, Output_vector3);
    //printf("EXEC OF MATRIX VECTOR PDT COMPLETED \n");

    uint64_t end_time3 = rdtsc();
    float elapsed_time3 = (float)(end_time3 - start_time3) / cpu_freq;

    //printf("Time elapsed for noral SPMV: %f seconds\n", elapsed_time3);



    printf("avg time required to perform normal spmv with same input vector ONLY SCHEDULE is %f seconds\n",(elapsed_time1+elapsed_time2+elapsed_time3)/3);
    printf("rows=%d columns= %d non-zero=%d \n", M,N,nz);


    #ifdef DEBUG
    // Output the resulting vector
    for (int i = 0; i < M; i++) {
        printf("%f\n", Output_vector[i]);
    }
    #endif

}