import requests
from bs4 import BeautifulSoup
import os
import re

# Function to download a file from a URL
def download_file(url, dest_folder):
    if not os.path.exists(dest_folder):
        os.makedirs(dest_folder)
    filename = url.split('/')[-1]
    file_path = os.path.join(dest_folder, filename)
    response = requests.get(url)
    if response.status_code == 200:
        with open(file_path, 'wb') as f:
            f.write(response.content)
        return file_path
    else:
        print(f"Failed to download {url} with status code {response.status_code}")
        return None

# Base URL of SuiteSparse Matrix Collection
base_url = "https://sparse.tamu.edu"

# URL of the page with the list of matrices
list_url = f"{base_url}/?per_page=10000"

# Request the page content
response = requests.get(list_url)
soup = BeautifulSoup(response.content, 'html.parser')

# List to store matrix details
matrices = []

# Find all rows in the table
for row in soup.find_all('tr'):
    columns = row.find_all('td')
    if len(columns) > 0:
        # Check if the matrix is positive definite
        if "positive definite" in columns[6].text.lower():
            # Extract details
            name = columns[0].text.strip()
            group = columns[1].text.strip()
            rows = int(columns[2].text.strip().replace(',', ''))
            cols = int(columns[3].text.strip().replace(',', ''))
            nonzeros = int(columns[4].text.strip().replace(',', ''))
            size = rows * cols

            # Skip matrices that are too small
            if size < 1000:
                continue

            matrix_url = f"{base_url}/{group}/{name}"
            matrices.append((name, group, rows, cols, nonzeros, matrix_url))

# Sort matrices by size (rows * columns)
matrices.sort(key=lambda x: x[2] * x[3])

# Filter for 40 matrices with varied sizes
selected_matrices = []
total_matrices = len(matrices)
step = max(1, total_matrices // 40)
for i in range(0, total_matrices, step):
    if len(selected_matrices) >= 40:
        break
    selected_matrices.append(matrices[i])

# Folder to save matrices
matrix_folder = "matrices"
os.makedirs(matrix_folder, exist_ok=True)

# File to save matrix details
details_file = "matrix_details.txt"

# Open the file to write details
with open(details_file, 'w') as f:
    for name, group, rows, cols, nonzeros, matrix_url in selected_matrices:
        # Download matrix file
        print(f"Processing matrix: {name}")
        matrix_page = requests.get(matrix_url)
        matrix_soup = BeautifulSoup(matrix_page.content, 'html.parser')
        
        # Find the matrix file link
        mtx_link = matrix_soup.find('a', text=re.compile(r'\.mtx'))
        if mtx_link:
            mtx_url = base_url + mtx_link['href']
            print(f"Matrix file URL: {mtx_url}")
            matrix_file_path = download_file(mtx_url, matrix_folder)
            if not matrix_file_path:
                print(f"Failed to download matrix file for {name}")
                continue
        else:
            print(f"Matrix file not found for {name}")
            continue
        
        # Find the image link
        img_tag = matrix_soup.find('img')
        if img_tag:
            image_url = base_url + img_tag['src']
            print(f"Image file URL: {image_url}")
            image_file_path = download_file(image_url, matrix_folder)
            if not image_file_path:
                print(f"Failed to download image file for {name}")
                continue
        else:
            print(f"Image file not found for {name}")
            continue
        
        # Write details to the file
        f.write(f"Matrix Name: {name}\n")
        f.write(f"Group: {group}\n")
        f.write(f"Rows: {rows}\n")
        f.write(f"Columns: {cols}\n")
        f.write(f"Non-Zeros: {nonzeros}\n")
        f.write(f"Matrix File: {matrix_file_path}\n")
        f.write(f"Image File: {image_file_path}\n\n")

print("Scraping completed. Matrix details are saved in 'matrix_details.txt'.")
