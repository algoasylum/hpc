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
    int *row_indices;  // Array of column indices
    int *column_ptrs;  // Array of row pointers
} CSRMatrix;

// Function to perform matrix-vector product
void csc_matrix_vector_product(CSRMatrix A, double *x, double *y) {
    printf("MATRIX VECTOR PDT START \n");
    for (int j = 0; j < A.cols; j++) {
        for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i++) {
            y[A.row_indices[i]] += A.values[i] * x[j];
        }
    }

    /*for(int i = 0; i < A.rows; i++) {
        printf("%f",y[i]);
    }*/
    printf("MATRIX VECTOR PDT FINSIHED \n");
}


void cscToDense(int rows, int cols, double* values, int* row_index, int* col_ptr, double** dense_matrix) {
    // Allocate memory for the dense matrix
    *dense_matrix = (double*) malloc(rows * cols * sizeof(double));
    printf("CSC TO DENSE START \n");

    // Initialize the dense matrix with zeros
    for (int i = 0; i < rows * cols; i++) {
        (*dense_matrix)[i] = 0.0;
    }
    //printf("INIT OF DENSE MATRIX DONE \n");

    // Fill the dense matrix using the CSC format data
    for (int j = 0; j < cols; j++) {
        int col_start = col_ptr[j];
        int col_end = col_ptr[j + 1];
        //printf("COLUMN %d: Start: %d, End: %d\n", j, col_start, col_end); // Debugging statement

        for (int i = col_start; i < col_end; i++) {
            //printf("INNER LOOP: j = %d, i = %d\n", j, i); // Debugging statement
            int row = row_index[i];
            //printf("Setting value at (%d, %d)\n", row, j); // Debugging statement
            (*dense_matrix)[(row * cols) + j] = values[i];
        }
    }

    printf("CSC TO DENSE COMPLETED\n");
}


void writeDenseMatrixToFile(const char *filename, double *dense_matrix, int rows, int cols) {
    FILE *file = fopen(filename, "w");
    if (file == NULL) {
        perror("Error opening file");
        return;
    }

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            fprintf(file, "%.2f ", dense_matrix[i * cols + j]);
        }
        fprintf(file, "\n"); // New line after each row
    }

    fclose(file);
}


void writeVectorToFile(const char *filename, double *vector, int size) {
    FILE *file = fopen(filename, "a");
    if (file == NULL) {
        perror("Error opening file");
        return;
    }

    for (int i = 0; i < size; i++) {
        fprintf(file, "%.2f\n", vector[i]);
    }

    fclose(file);
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

    I = (int *)malloc(nz * sizeof(int));        // I is the row values
    J = (int *)malloc(nz * sizeof(int));        // J is the column values as it is rep in CSC format so for particular this column these row I values change
    val = (double *)malloc(nz * sizeof(double));    // val is the data at these locations in which is non-zero

    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  // Adjust from 1-based to 0-based
        J[i]--;  // coz C is 0 based and the values provided in matrix market is 1 based
    }

    // Construct CSR matrix
    CSRMatrix A;
    A.rows = M;
    A.cols = N;
    A.nnz = nz;
    A.values = val;
    A.row_indices = I;
    A.column_ptrs = (int *)malloc((A.cols + 1) * sizeof(int));
    double* dense_matrix = NULL;

    int current_column = 0;
    A.column_ptrs[0] = 0;
    for (int i = 0; i < nz; i++) {
        if (J[i] != current_column) {
            current_column = J[i];
            A.column_ptrs[current_column] = i;
        }
    }
    A.column_ptrs[N] = nz;  // End pointer

    printf("ASSIGNING THE ROW VALUES DONE\n");

    double *Input_vector = (double *)malloc(N * sizeof(double));
    double *Output_vector = (double *)malloc(M * sizeof(double));

    // Initialize input vector to all 1s
    for (int i = 0; i < N; i++) {
        Input_vector[i] = 1.0;
    }

    // Initialize Output_vector to all zeros coz before performing the matrix-vector product, you ensure that all elements of the result vector are properly accumulated
    for (int i = 0; i < M; i++) {
        Output_vector[i] = 0.0;
    }

    // Perform matrix-vector product
    csc_matrix_vector_product(A, Input_vector, Output_vector);
    printf("EXEC OF MATRIX VECTOR PDT COMPLETED \n");

    cscToDense(M, N, val, I, A.column_ptrs, &dense_matrix);


    // Output the resulting vector
    for (int i = 0; i < M; i++) {
        printf("%.2f\n", Output_vector[i]);
    }

    // Print the dense matrix
    printf("Dense matrix:\n");
    /*for (int i = 0; i < N; i++) {
        for (int j = 0; j < M ; j++) {
            printf("%5.1f ", dense_matrix[i * N + j]);
        }
        printf("\n");
    }*/


    writeDenseMatrixToFile("C:/Users/DELL/OneDrive/Documents/samplesss/InputCG.txt", dense_matrix, M, N);
    writeVectorToFile("C:/Users/DELL/OneDrive/Documents/samplesss/InputCG.txt", Output_vector, M);


    if (f != stdin)
        fclose(f);

    free(I);
    free(J);
    free(val);
    free(A.column_ptrs);
    free(Input_vector);
    free(Output_vector);

    return 0;
}




/* Input:      A file that contains a symmetric, positive definite matrix A,  
 *             and the corresponding right hand side vector B. Preferably, each
 *             line consists of [n] elements and the [n+1] line would be the b.
 * Output:     1. The number of iterations,
 *             2. The time used by the solver (not including I/O),
 *             3. The solution to the linear system (if not suppressed),
 *             4. The norm of the residual calculated by the conjugate gradient 
 *                method, and 
 *
 * Algorithm:  The matrix A's initially read and parsed into an one-dimensional
 *             array; the right hand side vector b is stored in an array as 
 *             well. After some preparation work of allocating memory and 
 *             assigning variables the program jumps into the main loop, the 
 *             conjugate gradient solver. For the exact mathematical procedure,
 *             please refer to http://www.cs.usfca.edu/~peter/cs625/prog2.pdf
 *             and http://en.wikipedia.org/wiki/Conjugate_gradient_method for a
 *             much better demonstration.
 */