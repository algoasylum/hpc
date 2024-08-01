import subprocess
import re

def run_spmv(matrix_file):
    result = subprocess.run(["./SPMV-10-DOUBLE", matrix_file], capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Error running spmv for {matrix_file}: {result.stderr}")
        return None, None, None, None
    else:
        # Extract the total execution time, rows, columns, and non-zero values from the output
        exec_time = None
        rows, columns, non_zero = None, None, None
        for line in result.stdout.splitlines():
            if "Time elaptsed TOTAL:" in line:
                exec_time = float(line.split()[-2])
            if "rows=" in line and "columns=" in line and "non-zero=" in line:
                match = re.search(r"rows=(\d+)\s+columns=\s*(\d+)\s+non-zero=(\d+)", line)
                if match:
                    rows = int(match.group(1))
                    columns = int(match.group(2))
                    non_zero = int(match.group(3))
        return exec_time, rows, columns, non_zero

def run_multiple_matrices(matrix_files):
    results = {}
    for matrix_file in matrix_files:
        exec_time, rows, columns, non_zero = run_spmv(matrix_file)
        if exec_time is not None:
            results[matrix_file] = {
                "exec_time": exec_time,
                "rows": rows,
                "columns": columns,
                "non_zero": non_zero
            }
    return results

if __name__ == "__main__":
    # List of input matrix files
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
    
    # Run the C program for each matrix file and collect execution times
    results = run_multiple_matrices(matrix_files)
    
    # Print the results
    for i, (matrix_file, data) in enumerate(results.items(), 1):
        print(f"Results for matrix {i}:")
        print(f"  File: {matrix_file}")
        print(f"  Total Execution time: {data['exec_time']} seconds")
        print(f"  Rows: {data['rows']}, Columns: {data['columns']}, Non-zero: {data['non_zero']}")
        print()