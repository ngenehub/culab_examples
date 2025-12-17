# CuLab Simple Benchmarks

This directory contains **simple GPU benchmarks** used to evaluate **[CuLab](https://www.ngene.co/gpu-toolkit-for-labview) performance** and compare it against **LabVIEW** and [**CuPy**](https://cupy.dev) implementations.


### List of Benchmarks

- **[FFT1D](https://github.com/ngenehub/culab_examples/tree/main/Benchmarks/CuLab_Simple_Benchmarks/LabVIEW/1_FFT1D)** – 1-dimensional Fast Fourier Transform  
- **[GEMM](https://github.com/ngenehub/culab_examples/tree/main/Benchmarks/CuLab_Simple_Benchmarks/LabVIEW/2_GEMM)** – General Matrix Multiplication  
- **[Conv1D](https://github.com/ngenehub/culab_examples/tree/main/Benchmarks/CuLab_Simple_Benchmarks/LabVIEW/3_Conv1D)** – 1-dimensional Convolution  
- **[Mandelbrot](https://github.com/ngenehub/culab_examples/tree/main/Benchmarks/CuLab_Simple_Benchmarks/LabVIEW/4_Mandelbrot)** – Mandelbrot set computation
---
### CuLab Performance Gain vs LabVIEW
| Benchmark   |  Mean |  Max | 
|------------|--------------|-------------|
| **FFT1D**  | 15.09 | 39.76 |
| **GEMM**    | 32.70 | 109.4 | 
| **Conv1D** | 21.16 | 84.85 | 
| **Mandelbrot** | 22.06 | 40.08 |


CuLab provides significant performance improvements - at least **40×** for large problem sizes across all tasks - and gains can reach up to **110×** for computationally intensive operations, such as large matrix multiplications

---
### CuLab Performance Gain vs CuPy
| Benchmark  |  Mean |  Max |
|------------|-----------|----------|
| **FFT1D**  | 1.92 | 3.92 |
| **GEMM**    | 2.54 | 7.02 |
| **Conv1D** | 2.15 | 3.23 |
| **Mandelbrot** | 2.29 | 2.99 |


CuLab consistently outperforms CuPy, achieving **at least a 90%** average speedup and up to **7×** improvement for low-latency tasks.
This is due to CuLab’s optimized GPU kernels and efficient memory management, which minimize overhead, whereas CuPy incurs additional latency from Python-level execution and general-purpose wrappers.

---

## Benchmark Workflow

1. To replicate the results or run benchmarks on different hardware and software configurations, start by running the CuPy benchmarks (see instructions in the CuPy folder).
This will measure CuPy execution times and save the results as CSV files for each benchmark.

2. Next, run the corresponding LabVIEW VIs for each benchmark in the LabVIEW folder.
These VIs will load the CuPy results from the CSV files (Paths should be provided manualy), measure CuLab and LabVIEW timings, and display the results.

## System Information
### Software
- **LabVIEW Version:** 2020 x64
- **CuLab Version:** 5.0.1 
- **CuPy Version:** 13.6.0  

### Hardware
- **CPU:** Intel(R) Core(TM) i7-8700K  
- **GPU:** NVIDIA GeForce RTX 2080 Ti

