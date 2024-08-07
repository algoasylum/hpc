#!/usr/bin/env python
# coding: utf-8

# In[3]:


import requests
from bs4 import BeautifulSoup
import os
import random
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
        print(f"Downloaded file: {file_path}")
        return file_path
    else:
        print(f"Failed to download {url} with status code {response.status_code}")
        return None

# Base URL of SuiteSparse Matrix Collection
base_url = "https://sparse.tamu.edu"

# Initial request to the main page to get filters and token
initial_response = requests.get(base_url)
initial_soup = BeautifulSoup(initial_response.content, 'html.parser')

# Extract authenticity token if needed (depends on the site setup)
# token = initial_soup.find("input", {"name": "authenticity_token"})['value']

# Prepare filter URL with positive definite filter
filter_url = f"{base_url}/?filterrific[search_query]=&filterrific[sorted_by]=nonzeros_desc&filterrific[positive_definite]=Yes&commit=Filter"
print(f"Filter URL: {filter_url}")

# Request the filtered page content
filtered_response = requests.get(filter_url)
filtered_soup = BeautifulSoup(filtered_response.content, 'html.parser')

# List to store matrix details
matrices = []

# Find all rows in the table
for row in filtered_soup.find_all('tr'):
    columns = row.find_all('td')
    if len(columns) > 0:
        name = columns[1].text.strip()
        group = columns[2].text.strip()
        rows = int(columns[3].text.strip().replace(',', ''))
        cols = int(columns[4].text.strip().replace(',', ''))
        nonzeros = int(columns[5].text.strip().replace(',', ''))
        size = rows * cols

        matrix_url = base_url + columns[1].find('a')['href']
        matrices.append((name, group, rows, cols, nonzeros, matrix_url))

# Select 40 random matrices from the filtered results
selected_matrices = random.sample(matrices, 15)

# Folder to save matrices
matrix_folder = "matrices"
os.makedirs(matrix_folder, exist_ok=True)

# File to save matrix details
details_file = "matrix_details.txt"

# Process each selected matrix
with open(details_file, 'w') as f:
    for name, group, rows, cols, nonzeros, matrix_url in selected_matrices:
        print(f"Processing matrix: {name}")
        matrix_page = requests.get(matrix_url)
        matrix_soup = BeautifulSoup(matrix_page.content, 'html.parser')

        # Find the Matrix Market file link
        mtx_link = None
        for td in matrix_soup.find_all('td'):
            mtx_link = td.find('a', text=re.compile(r'Matrix Market'))
            if mtx_link:
                break

        if mtx_link:
            mtx_url = mtx_link['href']
            print(f"Matrix file URL: {mtx_url}")
            matrix_file_path = download_file(mtx_url, matrix_folder)
            if not matrix_file_path:
                print(f"Failed to download matrix file for {name}")
                continue
        else:
            print(f"Matrix Market file not found for {name}")
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


# In[ ]:





# In[ ]:





# In[ ]:





# In[2]:


import requests
from bs4 import BeautifulSoup
import os
import random
import re

def download_file(url, dest_folder):
    if not os.path.exists(dest_folder):
        os.makedirs(dest_folder)
    filename = url.split('/')[-1]
    file_path = os.path.join(dest_folder, filename)
    response = requests.get(url)
    if response.status_code == 200:
        with open(file_path, 'wb') as f:
            f.write(response.content)
        print(f"Downloaded file: {file_path}")
        return file_path
    else:
        print(f"Failed to download {url} with status code {response.status_code}")
        return None

base_url = "https://sparse.tamu.edu"

initial_response = requests.get(base_url)
initial_soup = BeautifulSoup(initial_response.content, 'html.parser')

filter_url = f"{base_url}/?filterrific[search_query]=&filterrific[sorted_by]=nonzeros_desc&filterrific[positive_definite]=Yes&commit=Filter"
print(f"Filter URL: {filter_url}")

filtered_response = requests.get(filter_url)
filtered_soup = BeautifulSoup(filtered_response.content, 'html.parser')

matrices = []

for row in filtered_soup.find_all('tr'):
    columns = row.find_all('td')
    if len(columns) > 0:
        name = columns[1].text.strip()
        group = columns[2].text.strip()
        rows = int(columns[3].text.strip().replace(',', ''))
        cols = int(columns[4].text.strip().replace(',', ''))
        nonzeros = int(columns[5].text.strip().replace(',', ''))
        size = rows * cols

        matrix_url = base_url + columns[1].find('a')['href']
        matrices.append((name, group, rows, cols, nonzeros, matrix_url))

selected_matrices = random.sample(matrices, 15)

matrix_folder = "matrices"
os.makedirs(matrix_folder, exist_ok=True)

details_file = "matrix_details.txt"

with open(details_file, 'w') as f:
    for name, group, rows, cols, nonzeros, matrix_url in selected_matrices:
        print(f"Processing matrix: {name}")
        matrix_page = requests.get(matrix_url)
        matrix_soup = BeautifulSoup(matrix_page.content, 'html.parser')

        mtx_link = matrix_soup.find('a', text='Matrix Market', class_='btn btn-outline-dark btn-sm')
        if mtx_link:
            mtx_url = mtx_link['href']
            print(f"Matrix file URL: {mtx_url}")
            matrix_file_path = download_file(mtx_url, matrix_folder)
            if not matrix_file_path:
                print(f"Failed to download matrix file for {name}")
                continue
        else:
            print(f"Matrix Market file not found for {name}")
            continue

        img_tag = matrix_soup.find('img', class_='img-fluid')
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

        f.write(f"Matrix Name: {name}\n")
        f.write(f"Group: {group}\n")
        f.write(f"Rows: {rows}\n")
        f.write(f"Columns: {cols}\n")
        f.write(f"Non-Zeros: {nonzeros}\n")
        f.write(f"Matrix File: {matrix_file_path}\n")
        f.write(f"Image File: {image_file_path}\n\n")

print("Scraping completed. Matrix details are saved in 'matrix_details.txt'.")


# In[ ]:




