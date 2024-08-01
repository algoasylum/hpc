# -*- coding: utf-8 -*-
"""
Created on Tue Jun 18 11:12:26 2024

@author: DELL
"""

import numpy as np
import matplotlib.pyplot as plt

# Read x_values from the file
def read_x_values(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()

    x_values = []
    for line in lines:
        x_values.append([float(x) for x in line.strip().split()])

    return np.array(x_values)

# Plot x_values
def plot_x_values(x_values):
    iterations, order = x_values.shape
    for i in range(order):
        plt.plot(range(iterations), x_values[:, i], label=f'x_{i+1}')

    plt.xlabel('Iteration')
    plt.ylabel('Value')
    plt.title('Conjugate Gradient Method Convergence')
    plt.legend()
    plt.grid(True)
    plt.show()

# Main function
if __name__ == '__main__':
    filename = 'x_values.txt'
    x_values = read_x_values("C:/Users/DELL/OneDrive/Documents/samplesss/x_values.txt")
    plot_x_values(x_values)
