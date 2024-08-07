#!/usr/bin/env python
# coding: utf-8

# In[8]:


import subprocess
import re
import matplotlib.pyplot as plt
import numpy as np

def run_spmv(executable, matrix_file):
    times = {'AVX-optimized 10x': [], 'MKL SPMV NORMAL': [], 'MKL AVX 10X': []}
    speedups = {'MKL NORMAL over AVX-MKL 10x': [], 'MKL NORMAL over AVX 10x': [], 'MKL-AVX 10X over AVX 10x': []}
    matrix_info = None
    for _ in range(3):  # Run 3 times
        result = subprocess.run([executable, matrix_file], capture_output=True, text=True)
        output = result.stdout
        # Extract times
        for line in output.split('\n'):
            if "AVX-optimized 10x: " in line:
                times['AVX-optimized 10x'].append(float(line.split()[-2]))
            elif 'MKL SPMV NORMAL:' in line:
                times['MKL SPMV NORMAL'].append(float(line.split()[-2]))
            elif 'MKL AVX 10X' in line:
                times['MKL AVX 10X'].append(float(line.split()[-2]))
            elif 'Speedup (MKL NORMAL over AVX-MKL 10x):' in line:
                speedups['MKL NORMAL over AVX-MKL 10x'].append(float(line.split()[-1]))
            elif 'Speedup (MKL NORMAL over AVX 10x):' in line:
                speedups['MKL NORMAL over AVX 10x'].append(float(line.split()[-1]))
            elif 'Speedup (MKL-AVX 10X over AVX 10x):' in line:
                speedups['MKL-AVX 10X over AVX 10x'].append(float(line.split()[-1]))
            elif 'Rows:' in line:
                matrix_info = line.strip()
    
    # Calculate average times and speedups
    avg_times = {k: np.mean(v) for k, v in times.items()}
    avg_speedups = {k: np.mean(v) for k, v in speedups.items()}
    
    return avg_times, avg_speedups, matrix_info

def plot_times(all_times, matrix_names):
    fig, ax = plt.subplots(figsize=(12, 6))
    x = np.arange(len(matrix_names))
    width = 0.25
    for i, (method, times) in enumerate(all_times.items()):
        ax.bar(x + i*width, times, width, label=method)
    ax.set_ylabel('Time (seconds)')
    ax.set_title('SPMV Performance Comparison')
    ax.set_xticks(x + width)
    ax.set_xticklabels(matrix_names, rotation=45, ha='right')
    ax.legend()
    plt.tight_layout()
    plt.show()  # Add this line to show the plot

def plot_speedups(all_speedups, matrix_names):
    fig, ax = plt.subplots(figsize=(12, 6))
    x = np.arange(len(matrix_names))
    width = 0.25
    for i, (method, speedups) in enumerate(all_speedups.items()):
        ax.bar(x + i*width, speedups, width, label=method)
    ax.set_ylabel('Speedup')
    ax.set_title('SPMV Speedup Comparison')
    ax.set_xticks(x + width)
    ax.set_xticklabels(matrix_names, rotation=45, ha='right')
    ax.legend()
    plt.tight_layout()
    plt.show()  # Add this line to show the plot

def main():
    executable = "C:/Users/DELL/OneDrive/Documents/samplesss./MKL-SPMV10X-DOUBLE-AVX.exe"
    matrix_files = [
        "C:/Users/DELL/Downloads/t2dah_e/t2dah_e/t2dah_e.mtx",
        #"C:/Users/DELL/Downloads/Pres_Poisson/Pres_Poisson/Pres_Poisson.mtx",
        #"C:/Users/DELL/Downloads/nd6k/nd6k/nd6k.mtx",
        # Add more matrix files as needed
    ]
    all_times = {method: [] for method in ['AVX-optimized 10x', 'MKL SPMV NORMAL', 'MKL AVX 10X']}
    all_speedups = {method: [] for method in ['MKL NORMAL over AVX-MKL 10x', 'MKL NORMAL over AVX 10x', 'MKL-AVX 10X over AVX 10x']}
    matrix_names = []

    for matrix_file in matrix_files:
        print(f"Processing {matrix_file}")
        avg_times, avg_speedups, matrix_info = run_spmv(executable, matrix_file)
        
        print("Average times:", avg_times)
        print("Average speedups:", avg_speedups)
        print("Matrix info:", matrix_info)
        
        for method in all_times:
            all_times[method].append(avg_times[method])
        for method in all_speedups:
            all_speedups[method].append(avg_speedups[method])
        
        matrix_names.append(matrix_info)

    print("All times:", all_times)
    print("All speedups:", all_speedups)
    print("Matrix names:", matrix_names)

    plot_times(all_times, matrix_names)
    plot_speedups(all_speedups, matrix_names)

if __name__ == "__main__":
    main()


# In[ ]:





# In[ ]:





# In[15]:


import os
import subprocess
import re
import numpy as np
import matplotlib.pyplot as plt

def run_spmv(executable, matrix_file):
    # Execute the program with the matrix file as an argument
    result = subprocess.run([executable, matrix_file], capture_output=True, text=True)
    output = result.stdout

    # Extracting the timing values using regex
    avx_optimized_10x_time = re.search(r'AVX-optimized 10x:\s+(\d+\.\d+e[+-]\d+)\s+seconds', output)
    mkl_spmv_normal_time = re.search(r'MKL SPMV NORMAL:\s+(\d+\.\d+e[+-]\d+)\s+seconds', output)
    mkl_avx_10x_time = re.search(r'MKL AVX 10X\s+(\d+\.\d+e[+-]\d+)\s+seconds', output)
    speedup1 = re.search(r'Speedup \(MKL NORMAL over AVX-MKL 10x\):\s+(\d+\.\d+)', output)
    speedup2 = re.search(r'Speedup \(MKL NORMAL over AVX 10x\):\s+(\d+\.\d+)', output)
    speedup3 = re.search(r'Speedup \(MKL-AVX 10X over AVX 10x\):\s+(\d+\.\d+)', output)
    matrix_details = re.search(r'Rows:\s+(\d+),\s+Columns:\s+(\d+),\s+Non-zero elements:\s+(\d+)', output)

    # Initialize result dictionaries
    times = {
        'AVX-optimized 10x': float(avx_optimized_10x_time.group(1)) if avx_optimized_10x_time else None,
        'MKL SPMV NORMAL': float(mkl_spmv_normal_time.group(1)) if mkl_spmv_normal_time else None,
        'MKL AVX 10X': float(mkl_avx_10x_time.group(1)) if mkl_avx_10x_time else None,
    }
    speedups = {
        'MKL NORMAL over AVX-MKL 10x': float(speedup1.group(1)) if speedup1 else None,
        'MKL NORMAL over AVX 10x': float(speedup2.group(1)) if speedup2 else None,
        'MKL-AVX 10X over AVX 10x': float(speedup3.group(1)) if speedup3 else None,
    }
    matrix_info = f"{matrix_details.group(1)}x{matrix_details.group(2)} ({matrix_details.group(3)} non-zeros)" if matrix_details else "Unknown"

    return times, speedups, matrix_info

def plot_data(data, title, ylabel, matrix_names):
    print(f"Plotting data for {title}")
    print(f"Data: {data}")
    print(f"Matrix names: {matrix_names}")

    fig, ax = plt.subplots(figsize=(12, 6))
    x = np.arange(len(matrix_names))
    width = 0.25
    for i, (method, values) in enumerate(data.items()):
        ax.bar(x + i*width, values, width, label=method)
    ax.set_ylabel(ylabel)
    ax.set_title(title)
    ax.set_xticks(x + width)
    ax.set_xticklabels(matrix_names, rotation=45, ha='right')
    ax.legend()
    plt.tight_layout()
    plt.show()

def main():
    executable = r"C:\Users\DELL\OneDrive\Documents\samplesss.\MKL-SPMV10X-DOUBLE-AVX.exe"
    matrix_files = [
        r"C:\Users\DELL\Downloads\t2dah_e\t2dah_e\t2dah_e.mtx",
        r"C:\Users\DELL\Downloads\Pres_Poisson\Pres_Poisson\Pres_Poisson.mtx",
        r"C:\Users\DELL\Downloads\nd6k\nd6k\nd6k.mtx",
    ]
    
    all_times = {method: [] for method in ['AVX-optimized 10x', 'MKL SPMV NORMAL', 'MKL AVX 10X']}
    all_speedups = {method: [] for method in ['MKL NORMAL over AVX-MKL 10x', 'MKL NORMAL over AVX 10x', 'MKL-AVX 10X over AVX 10x']}
    matrix_names = []

    for matrix_file in matrix_files:
        if not os.path.exists(matrix_file):
            print(f"Error: Matrix file not found at {matrix_file}")
            continue
        
        if not os.access(matrix_file, os.R_OK):
            print(f"Error: No read permission for {matrix_file}")
            continue

        print(f"Processing {matrix_file}")
        times, speedups, matrix_info = run_spmv(executable, matrix_file)
        
        for method in all_times:
            all_times[method].append(times[method])
        for method in all_speedups:
            all_speedups[method].append(speedups[method])
        
        matrix_names.append(matrix_info)

    print("All times:", all_times)
    print("All speedups:", all_speedups)
    print("Matrix names:", matrix_names)

    plot_data(all_times, 'SPMV Performance Comparison', 'Time (seconds)', matrix_names)
    plot_data(all_speedups, 'SPMV Speedup Comparison', 'Speedup', matrix_names)

if __name__ == "__main__":
    main()


# In[ ]:




