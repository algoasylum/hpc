#include <stdio.h>
#include <stdlib.h>
#include "mmio.h"
#include <time.h>
#include <stdint.h>

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
    int *column_ptrs;  // Array of column pointers cumulative
    int *column_indices;//this is just equal to J
} CSCMatrix;

void converfloatToFloat(double *val, float *val_float, int nz) {
    for (int i = 0; i < nz; i++) {
        val_float[i] = (float)val[i];
    }
}


#include <immintrin.h>

void csc_matrix_vector_avx(CSCMatrix A, float *Output_vector, float *Value_vector, float *val) {
    for (int j = 0; j < A.rows; j++) {
        __m256 sum = _mm256_setzero_ps();
        int i;
        for (i = A.column_ptrs[j]; i <= A.column_ptrs[j + 1] - 8; i += 8) {
            __m256 val_vec = _mm256_loadu_ps(&Value_vector[i]);
            __m256 vec_val = _mm256_loadu_ps(&val[i]);
            __m256 prod = _mm256_mul_ps(val_vec, vec_val);
            
            int row_idx0 = A.row_indices[i];
            int row_idx1 = A.row_indices[i+1];
            int row_idx2 = A.row_indices[i+2];
            int row_idx3 = A.row_indices[i+3];
            int row_idx4 = A.row_indices[i+4];
            int row_idx5 = A.row_indices[i+5];
            int row_idx6 = A.row_indices[i+6];
            int row_idx7 = A.row_indices[i+7];
            
            Output_vector[row_idx0] += prod[0];
            Output_vector[row_idx1] += prod[1];
            Output_vector[row_idx2] += prod[2];
            Output_vector[row_idx3] += prod[3];
            Output_vector[row_idx4] += prod[4];
            Output_vector[row_idx5] += prod[5];
            Output_vector[row_idx6] += prod[6];
            Output_vector[row_idx7] += prod[7];
        }
        
        // Handle remaining elements
        for (; i < A.column_ptrs[j + 1]; i++) {
            Output_vector[A.row_indices[i]] += Value_vector[i] * val[i];
        }
    }
}

void Value_vector(CSCMatrix A, float *initVal, float *modifiedVal){
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
    float *val_float, *vector_val;

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
    vector_val=(float *)malloc(nz * sizeof(float)); //speacilaized vector values for specific val values in the matrix
    val_float = (float *)malloc(nz * sizeof(float));

    for (int i = 0; i < nz; i++) {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  // Adjust from 1-based to 0-based
        J[i]--;  // coz C is 0 based and the values provided in matrix market is 1 based
    }

    float cpu_freq = get_cpu_frequency();
    uint64_t start_time5 = rdtsc();

    converfloatToFloat(val, val_float, nz);

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
    A.column_indices = J;
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

    // Initialize input vector to all 1s
    float k=10.0;
    for (int i = 0; i < N; i++) {

        Input_vector[i]=(float)rand() / RAND_MAX * 10.0; 
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


   

    uint64_t start_time1 = rdtsc();
    Value_vector(A, Input_vector, vector_val);

    uint64_t end_time1 = rdtsc();
    float elapsed_time1 = (float)(end_time1 - start_time1) / cpu_freq;
    printf("Time elapsed to form the new vector is : %f seconds\n", elapsed_time1);

    // Output the resulting vector
    /*for (int i = 0; i < A.nnz; i++) {
        printf("%f\n", vector_val[i]);
    }*/

    

    uint64_t start_time2 = rdtsc();
    csc_matrix_vector_avx(A, Output_vector, vector_val, val_float);

    uint64_t end_time2 = rdtsc();
    float elapsed_time2 = (float)(end_time2 - start_time2) / cpu_freq;
    printf("Time elapsed for multiplying and adding both: %f seconds\n", elapsed_time2);


    //uint64_t end_time = rdtsc();
    float elapsed_time = elapsed_time1 + elapsed_time2+elapsed_time5;
    printf("Total time elapsed: %f seconds\n",elapsed_time);
    printf("Rows: %d, Columns: %d, Non-zero elements: %d \n", M,N,nz);



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
    free(val_float);

    return 0;

}