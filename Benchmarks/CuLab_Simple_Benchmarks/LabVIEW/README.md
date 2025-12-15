# LabVIEW Benchmarks

This folder contains all **LabVIEW benchmark projects** for CuLab.  
These benchmarks allow you to compare the performance of **CuLab** with LabVIEW and Python (CuPy) across different computational tasks.
### Project Contents
<p align="center">
<img alt="image" src="https://github.com/user-attachments/assets/fb9cc328-20c7-4c02-9ec5-0304a2cfa128" />

</p>

## Included Benchmarks

- **1D FFT** – `FFT1D_Top.vi`  
- **GEMM (Matrix Multiplication)** – `GEMM_Top.vi`  
- **1D Convolution** – `Conv1D_Top.vi`  
- **Mandelbrot** – `Mandelbrot_Top.vi`  

Each benchmark VI is a **Top-level VI** (`_Top.vi`) that orchestrates execution, timing, and data logging.

## Python Integration

- Python scripts are located in:  
  `culab_examples/Benchmarks/CuLab_Simple_Benchmarks/CuPY`  
- These scripts measure execution times for **CuPy** and log results to **CSV files**.  
- In each `_Top.vi`, set the **CSV file path** to load Python results for graphing and performance comparison.

## Graphs

For each benchmark, the VI generates **two graphs**:

1. **Execution Time Graph** – Displays execution time for **CuLab**, **LabVIEW**, and **CuPy** across all tested data sizes.  
2. **CuLab Performance Gain Graph** – Shows the performance gain of **CuLab** compared to LabVIEW and CuPy.  

## Usage

1. Run the Python scripts in the CuPy folder to generate CSV execution times.  
2. Open the corresponding `_Top.vi` for the benchmark in LabVIEW.  
3. Set the CSV path in the VI (if using Python data for comparison).  
4. Run the VI to execute the benchmark and display the graphs.