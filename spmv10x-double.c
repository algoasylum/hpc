#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <time.h>
#include "mmio.h"

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
    int *row_indices;  // Array of row values of that particualr column
    int *column_ptrs;  // Array of column pointers cumulative
    int *column_indices;//this is just equal to J
} CSCMatrix;




void csc_matrix_vector(CSCMatrix A, double *Output_vector, double *Value_vector, double *val){
    //double val_spec=0;
    for(int j=0; j<A.rows; j++){
        //val_spec=0;
        for (int i = A.column_ptrs[j]; i < A.column_ptrs[j + 1]; i++) {
            /*printf("val_vector %f\n",Value_vector[i]);
            printf("value is %f\n",val[i]);
            printf("%d\n",A.row_indices[i]);*/
            Output_vector[A.row_indices[i]] +=Value_vector[i]*val[i];
        }
        //Output_vector[j] = val_spec;
        
    }

}

void Value_vector(CSCMatrix A, double *initVal, double *modifiedVal){
    for(int i=0; i<A.nnz; i++){
        modifiedVal[i]=initVal[A.column_indices[i]];
    }
    

}

int main(int argc, char *argv[]){
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
    vector_val=(double *)malloc(nz * sizeof(double)); //speacilaized vector values for specific val values in the matrix
    

    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  // Adjust from 1-based to 0-based
        J[i]--;  // coz C is 0 based and the values provided in matrix market is 1 based
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

    //printf("ASSIGNING THE ROW VALUES DONE\n");

    double *Input_vector = (double *)malloc(N * sizeof(double));
    double *Output_vector = (double *)malloc(M * sizeof(double));

    // Initialize input vector to all 1s
    double k=10.0;
    for (int i = 0; i < N; i++) {

        Input_vector[i]=(double)rand() / RAND_MAX * 10.0; 
        //k=k+10;
    }
    //init it to zero
    for (int i = 0; i < nz; i++) {
        vector_val[i] = 0.0;
    }

    // Initialize Output_vector to all zeros coz before performing the matrix-vector product, you ensure that all elements of the result vector are properly accumulated
    for (int i = 0; i < M; i++) {
        Output_vector[i] = 0.0;
    }

    

    //uint64_t start_time = rdtsc();


    double cpu_freq = get_cpu_frequency();

    uint64_t start_time1 = rdtsc();
    Value_vector(A, Input_vector, vector_val);

    uint64_t end_time1 = rdtsc();
    double elapsed_time1 = (double)(end_time1 - start_time1) / cpu_freq;
    printf("Time elapsed to form the new vector is : %f seconds\n", elapsed_time1);

    // Output the resulting vector
    /*for (int i = 0; i < A.nnz; i++) {
        printf("%f\n", vector_val[i]);
    }*/

    

    uint64_t start_time2 = rdtsc();
    csc_matrix_vector(A, Output_vector, vector_val, val);

    uint64_t end_time2 = rdtsc();
    double elapsed_time2 = (double)(end_time2 - start_time2) / cpu_freq;
    printf("Time elapsed for multiplying and adding both: %f seconds\n", elapsed_time2);


    //uint64_t end_time = rdtsc();
    double elapsed_time = elapsed_time1+elapsed_time2;
    //printf("Time elapsed to convert double to float: %f seconds",elapsed_time);
    printf("Total time elapsed: %f seconds\n", elapsed_time);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d\n", M, N, nz);


    /*// Output the resulting vector
    for (int i = 0; i < nz; i++) {
        printf("%f\n", val[i]);
    }
    printf("\n");
    printf("\n");

    for (int i = 0; i < M; i++) {
        printf("%f\n", Output_vector[i]);
    }*/


   free(I);
    free(J);
    free(val);
    free(vector_val);
    free(Input_vector);
    free(Output_vector);
    free(A.column_ptrs);

    return 0;

}


//gcc -std=c99 -o SPMV-10-DOUBLE spmv-10x-DOUBLE.c mmio.c