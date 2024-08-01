#include <stdio.h>
#include <stdlib.h>
#include "mmio.h"
#include <time.h>
#include <stdint.h>
#include <omp.h>

typedef struct {
    int rows;
    int cols;
    int nnz;
    float *values;
    int *row_indices;
    int *column_ptrs;
    int *column_indices;
} CSCMatrix;

void converfloatToFloat(double *val, float *val_float, int nz) {
    #pragma omp parallel for schedule(static)
    for (int i = 0; i < nz; i++) {
        val_float[i] = (float)val[i];
    }
}

void csc_matrix_vector(CSCMatrix A, float *Output_vector, float *Value_vector, float *val) {
    #pragma omp parallel
    {
        float *local_output = calloc(A.rows, sizeof(float));
        #pragma omp for schedule(guided)
        for(int j = 0; j < A.rows; j++) {
            for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i++) {
                local_output[A.row_indices[i]] += Value_vector[i] * val[i];
            }
        }
        #pragma omp critical
        for(int j = 0; j < A.rows; j++) {
            Output_vector[j] += local_output[j];
        }
        free(local_output);
    }
}

void Value_vector(CSCMatrix A, float *initVal, float *modifiedVal) {
    #pragma omp parallel for schedule(static)
    for(int i = 0; i < A.nnz; i++) {
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
    float *val_float, *vector_val;

    if (argc < 2) {
        fprintf(stderr, "Usage: %s [matrix-market-filename]\n", argv[0]);
        exit(1);
    }
    if ((f = fopen(argv[1], "r")) == NULL) exit(1);

    if (mm_read_banner(f, &matcode) != 0) {
        printf("Could not process Matrix Market banner.\n");
        exit(1);
    }

    if (mm_is_complex(matcode) && mm_is_matrix(matcode) && mm_is_sparse(matcode)) {
        printf("Sorry, this application does not support ");
        printf("Market Market type: [%s]\n", mm_typecode_to_str(matcode));
        exit(1);
    }

    if ((ret_code = mm_read_mtx_crd_size(f, &M, &N, &nz)) != 0) exit(1);

    I = (int *)malloc(nz * sizeof(int));
    J = (int *)malloc(nz * sizeof(int));
    val = (double *)malloc(nz * sizeof(double));
    vector_val = (float *)malloc(nz * sizeof(float));
    val_float = (float *)malloc(nz * sizeof(float));

    #pragma omp parallel for
    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;
        J[i]--;
    }

    converfloatToFloat(val, val_float, nz);

    CSCMatrix A;
    A.rows = M;
    A.cols = N;
    A.nnz = nz;
    A.values = val_float;
    A.row_indices = I;
    A.column_indices = J;
    A.column_ptrs = (int *)malloc((A.cols + 1) * sizeof(int));

    int current_column = 0;
    A.column_ptrs[0] = 0;
    for (int i = 0; i < nz; i++) {
        if (J[i] != current_column) {
            for (int j = current_column + 1; j <= J[i]; j++) {
                A.column_ptrs[j] = i;
            }
            current_column = J[i];
        }
    }
    for (int j = current_column + 1; j <= N; j++) {
        A.column_ptrs[j] = nz;
    }

    printf("ASSIGNING THE ROW VALUES DONE\n");

    float *Input_vector = (float *)malloc(N * sizeof(float));
    float *Output_vector = (float *)malloc(M * sizeof(float));

    // Initialize random number generator
    srand(time(NULL));

    #pragma omp parallel
    {
        #pragma omp for
        for (int i = 0; i < N; i++) {
            #pragma omp critical
            {
                Input_vector[i] = (float)rand() / RAND_MAX * 10.0f;
            }
        }

        #pragma omp for
        for (int i = 0; i < nz; i++) {
            vector_val[i] = 0.0f;
        }

        #pragma omp for
        for (int i = 0; i < M; i++) {
            Output_vector[i] = 0.0f;
        }
    }

    //double start_time = omp_get_wtime();

    double start_time1 = omp_get_wtime();
    Value_vector(A, Input_vector, vector_val);
    double end_time1 = omp_get_wtime();
    double elapsed_time1 = end_time1 - start_time1;
    printf("Time elapsed to form the new vector is : %f seconds\n", elapsed_time1);

    double start_time2 = omp_get_wtime();
    csc_matrix_vector(A, Output_vector, vector_val, val_float);
    double end_time2 = omp_get_wtime();
    double elapsed_time2 = end_time2 - start_time2;
    printf("Time elapsed for multiplying and adding both: %f seconds\n", elapsed_time2);

    //double end_time = omp_get_wtime();
    double elapsed_time = elapsed_time1 + elapsed_time2;
    printf("Time elapsed TOTAL: %f seconds\n", elapsed_time);
    printf("rows=%d columns=%d non-zero=%d\n", M, N, nz);

    free(I);
    free(J);
    free(val);
    free(val_float);
    free(vector_val);
    free(Input_vector);
    free(Output_vector);
    free(A.column_ptrs);

    return 0;
}

//