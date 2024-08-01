#include <stdio.h>
#include <stdlib.h>
#include "mmio.h"
#include <time.h>

// Structure to represent CSR format
typedef struct {
    int rows;
    int cols;
    int nnz;  // Number of non-zero elements
    double *values;  // Array of non-zero values
    int *col_indices;  // Array of column indices
    int *row_ptrs;  // Array of row pointers
} CSRMatrix;

// Function to perform matrix-vector product
void csr_matrix_vector_product(CSRMatrix A, double *x, double *y) {
    for (int i = 0; i < A.rows; i++) {
        y[i] = 0.0;
        for (int j = A.row_ptrs[i]; j < A.row_ptrs[i + 1]; j++) {
            y[i] += A.values[j] * x[A.col_indices[j]];
        }
    }
}

// Function to flatten CSR matrix into a 1D array
double* flatten_matrix(CSRMatrix A) {
    double *flat_matrix = (double *)malloc(A.rows * A.cols * sizeof(double));
    int index = 0;

    for (int i = 0; i < A.rows; i++) {
        for (int j = 0; j < A.cols; j++) {
            int start = A.row_ptrs[i];
            int end = A.row_ptrs[i + 1];
            int found = 0;
            for (int k = start; k < end; k++) {
                if (A.col_indices[k] == j) {
                    flat_matrix[index++] = A.values[k];
                    found = 1;
                    break;
                }
            }
            if (!found) {
                flat_matrix[index++] = 0.0; // Fill with 0 for missing elements
            }
        }
    }

    return flat_matrix;
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

    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  // Adjust from 1-based to 0-based
        J[i]--;
    }

    // Construct CSR matrix
    CSRMatrix A;
    A.rows = M;
    A.cols = N;
    A.nnz = nz;
    A.values = val;
    A.col_indices = J;
    A.row_ptrs = (int *)malloc((A.rows + 1) * sizeof(int));

    int current_row = 0;
    A.row_ptrs[0] = 0;
    for (int i = 0; i < nz; i++) {
        if (I[i] != current_row) {
            current_row = I[i];
            A.row_ptrs[current_row] = i;
        }
    }
    A.row_ptrs[M] = nz;  // End pointer

    // Flatten CSR matrix into a 1D array
    double *flat_matrix = flatten_matrix(A);

    // Perform matrix-vector product
    double *Input_vector = (double *)malloc(N * sizeof(double));
    double *Output_vector = (double *)malloc(M * sizeof(double));

    // Initialize input vector to all 1s
    for (int i = 0; i < N; i++) {
        Input_vector[i] = 1.0;
    }

    csr_matrix_vector_product(A, Input_vector, Output_vector);

    // Output the resulting vector
    for (int i = 0; i < M; i++) {
        printf("%.2f\n", Output_vector[i]);
    }

    // Free allocated memory
    if (f != stdin)
        fclose(f);

    free(I);
    free(J);
    free(val);
    free(A.row_ptrs);
    free(Input_vector);
    free(Output_vector);
    free(flat_matrix);

    return 0;
}
