### Benchmark Description
GEMM performance comparison across multiple input sizes for [**CuLab**](https://www.ngene.co/gpu-toolkit-for-labview), **LabVIEW**, and **CuPy**.


### GEMM_Top.vi
<p align="center">
<img " alt="image" src="https://github.com/user-attachments/assets/4dfe4cec-588b-415e-8434-a7024a60099b" />
  <p align="center"><i>GEMM_Top.vi Front Panel</i> <br/>

</p>

<br/>

### GEMM Benchmark

This benchmark measures execution time of **matrix multiplication (GEMM)** for different matrix sizes (M × N), comparing **CuLab**, **LabVIEW**, and **CuPy**.

### [System Information](https://github.com/ngenehub/culab_examples/tree/main/Benchmarks/CuLab_Simple_Benchmarks#system-information)

### Benchmark Results – Execution Time
| Size (M × N) | 64     | 128    | 256    | 512    | 1024   | 2048   | 4096   | 8192   |
|--------------------|--------|--------|--------|--------|--------|--------|--------|--------|
| **CuLab**          | 40u    | 59u    | 151u   | 424u   | 1.383m | 5.5m   | 26.174m| 143.78m|
| **LabVIEW**        | 8u     | 83u    | 481u   | 3.748m | 30.043m| 239.559m| 1.918907| 15.7306 |
| **CuPy**           | 281u   | 264u   | 289u   | 619u   | 1.876m | 8.084m | 36.448m| 179.99m|


### CuLab Performance Gain

The table below shows the performance gain of **CuLab** compared to **LabVIEW** and **CuPy**.

| CuLab vs | Mean Gain | Max Gain |
|:-------------:|:------------:|:------------:|
| **LabVIEW**   | 32.70      | 109.40      |
| **CuPy**      | 2.54       | 7.02       |


**Conclusion**

CuLab significantly outperforms LabVIEW (mean gain **33×**, max **109×**) and CuPy (mean gain **3×**, max **7×**).
The performance gain over LabVIEW is more noticeable on larger data sizes, while the gain over CuPy is more evident on smaller data sizes due to Python's overhead.


### Project VI Implementation

Implementation of the project VI is provided below.

**GEMM_Top.vi**
<p align="center">
<img width="1581" height="562" alt="image" src="https://github.com/user-attachments/assets/3c96e70d-4d8d-4a51-880d-3df8d435ef3f" />
   <p align="center"><i>GEMM_Top.vi Block Diagram</i> <br/>


</p>

<br/>

**GEMM_CuLab.vi**

<p align="center">
<img width="1236" height="487" alt="image" src="https://github.com/user-attachments/assets/c3296e88-2d0b-4342-ad35-eb6643e39c9c" />
  <p align="center"><i>GEMM_CuLab.vi Block Diagram</i> <br/>
</p>

<br/>

**GEMM_LabVIEW.vi**

<p align="center">
<img width="752" height="285" alt="image" src="https://github.com/user-attachments/assets/028a7d7d-1a82-48bc-8a04-482383342b47" />
<p align="center"><i>GEMM_LabVIEW.vi Block Diagram</i> 
  <br/>
</p>

<br/>

