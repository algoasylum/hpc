import subprocess
import re

def run_spmv(matrix_file):
    # Run the C program and capture its output
    result = subprocess.run(["C:/Users/DELL/OneDrive/Documents/samplesss/GCC-PARALLEL-DOUBLE-10X.exe", matrix_file], capture_output=True, text=True)
    
    # Print the output for debugging
    print(f"Output for {matrix_file}:")
    print(result.stdout)
    
    # Extract timing information using regular expressions
    new_vector_time_match = re.search(r'Time elapsed to form the new vector is : (\d+\.\d+) seconds', result.stdout)
    multiply_add_time_match = re.search(r'Time elapsed for multiplying and adding both: (\d+\.\d+) seconds', result.stdout)
    total_time_match = re.search(r'Time elaptsed TOTAL: (\d+\.\d+) seconds', result.stdout)
    
    if not new_vector_time_match or not multiply_add_time_match or not total_time_match:
        print(f"Error parsing the output for {matrix_file}")
        return None
    
    new_vector_time = float(new_vector_time_match.group(1))
    multiply_add_time = float(multiply_add_time_match.group(1))
    total_time = float(total_time_match.group(1))
    
    # Extract matrix information
    matrix_info_match = re.search(r'rows=(\d+) columns= (\d+) non-zero=(\d+)', result.stdout)
    
    if not matrix_info_match:
        print(f"Error parsing the matrix info for {matrix_file}")
        return None
    
    rows = int(matrix_info_match.group(1))
    columns = int(matrix_info_match.group(2))
    non_zero = int(matrix_info_match.group(3))
    
    return {
        'file': matrix_file,
        'new_vector_time': new_vector_time,
        'multiply_add_time': multiply_add_time,
        'total_time': total_time,
        'rows': rows,
        'columns': columns,
        'non_zero': non_zero
    }

# List of matrix files
matrix_files = [
    "C:/Users/DELL/Downloads/nos5.mtx/nos5.mtx",
    "C:/Users/DELL/Downloads/s3rmt3m3.mtx/s3rmt3m3.mtx",
    "C:/Users/DELL/Downloads/bcsstk01.mtx/BCS Structural Engineering Matrices (eigenvalue matrices).mtx",
    "C:/Users/DELL/Downloads/bcsstk05.mtx/BCS Structural Engineering Matrices (eigenvalue matrices) Transmission Towers.mtx",
    "C:/Users/DELL/Downloads/bcsstk11.mtx/BCS Structural Engineering Matrices (eigenvalue matrices) Ore car -- lumped mass.mtx",
    "C:/Users/DELL/Downloads/bcsstk08.mtx/BCS Structural Engineering Matrices (eigenvalue matrices) TV STUDIO.mtx",
    "C:/Users/DELL/Downloads/bcsstm09.mtx/BCS Structural Engineering Matrices (eigenvalue matrices) SQUARE PLATE CLAMPED.mtx",
    "C:/Users/DELL/Downloads/e30r5000.mtx/Driven cavity.mtx",
    "C:/Users/DELL/Downloads/fs_680_2.mtx/Chemical kinetics problems.mtx",
    "C:/Users/DELL/Downloads/e40r3000.mtx/driven cavity.mtx",
    "C:/Users/DELL/Downloads/fidap013.mtx/fidap013.mtx",
    "C:/Users/DELL/Downloads/fidapm15.mtx/fidapm15.mtx",
    "C:/Users/DELL/Downloads/gemat11.mtx/gemat11.mtx",
    "C:/Users/DELL/Downloads/fidapm29.mtx/fidapm29.mtx",
    "C:/Users/DELL/Downloads/fidapm37.mtx/fidapm37.mtx"
]

# Run SPMV for each matrix and collect results
results = []
for matrix_file in matrix_files:
    result = run_spmv(matrix_file)
    if result:
        results.append(result)

# Print results
for result in results:
    print(f"Results for matrix:")
    print(f"  File: {result['file']}")
    print(f"  New vector formation time: {result['new_vector_time']:.6f} seconds")
    print(f"  Multiply and add time: {result['multiply_add_time']:.6f} seconds")
    print(f"  Total execution time: {result['total_time']:.6f} seconds")
    print(f"  Rows: {result['rows']}, Columns: {result['columns']}, Non-zero: {result['non_zero']}")
    print()
