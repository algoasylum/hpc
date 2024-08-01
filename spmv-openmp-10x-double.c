#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <time.h>
#include <omp.h>
#include "mmio.h"  // Assuming you have this header for Matrix Market I/O

typedef struct {
    int rows;
    int cols;
    int nnz;
    double *values;
    int *row_indices;
    int *column_ptrs;
    int *column_indices;
} CSCMatrix;

void csc_matrix_vector(CSCMatrix A, double *Output_vector, double *Value_vector, double *val){
    #pragma omp parallel
    {
        double *local_output = calloc(A.rows, sizeof(double));
        #pragma omp for schedule(guided)
        for(int j=0; j<A.rows; j++){
            for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i++) {
                local_output[A.row_indices[i]] += Value_vector[i] * val[i];
            }
        }
        #pragma omp critical
        for(int j=0; j<A.rows; j++){
            Output_vector[j] += local_output[j];
        }
        free(local_output);
    }
}

void Value_vector(CSCMatrix A, double *initVal, double *modifiedVal){
    #pragma omp parallel for schedule(static)
    for(int i=0; i<A.nnz; i++){
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
    }
    
    if ((f = fopen(argv[1], "r")) == NULL) {
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
    double *Output_vector = (double *)malloc(M * sizeof(double));

    #pragma omp parallel for
    for (int i = 0; i < N; i++) {
        Input_vector[i] = (double)rand() / RAND_MAX * 10.0;
    }

    #pragma omp parallel for
    for (int i = 0; i < nz; i++) {
        vector_val[i] = 0.0;
    }

    #pragma omp parallel for
    for (int i = 0; i < M; i++) {
        Output_vector[i] = 0.0;
    }

    //double start_time = omp_get_wtime();

    double start_time1 = omp_get_wtime();
    Value_vector(A, Input_vector, vector_val);
    double end_time1 = omp_get_wtime();
    double elapsed_time1 = end_time1 - start_time1;
    printf("Time elapsed to form the new vector is : %f seconds\n", elapsed_time1);

    double start_time2 = omp_get_wtime();
    csc_matrix_vector(A, Output_vector, vector_val, val);
    double end_time2 = omp_get_wtime();
    double elapsed_time2 = end_time2 - start_time2;
    printf("Time elapsed for multiplying and adding both: %f seconds\n", elapsed_time2);

    //double end_time = omp_get_wtime();
    double elapsed_time = elapsed_time1+elapsed_time2;
    printf("Total time elapsed: %f seconds\n", elapsed_time);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d\n", M, N, nz);

    // Free allocated memory
    free(I);
    free(J);
    free(val);
    free(vector_val);
    free(Input_vector);
    free(Output_vector);
    free(A.column_ptrs);

    return 0;
}

//gcc -std=c99 -o SPMV-OPENMP-10-D spmv-openmp-10x-double.c -fopenmp mmio.c