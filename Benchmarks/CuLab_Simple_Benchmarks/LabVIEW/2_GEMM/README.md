### Benchmark Description
GEMM performance comparison across multiple input sizes for **CuLab**, **LabVIEW**, and **CuPy**.


### GEMM_Top.vi
<p align="center">
<img alt="image" src="https://github.com/user-attachments/assets/56dc9623-e327-4215-9c47-8a8023ec1b59" />
  <p align="center"><i>GEMM_Top.vi Front Panel</i> <br/>

</p>

<br/>

**GEMM Benchmark**

This benchmark measures execution time of **matrix multiplication (GEMM)** for different matrix sizes (M × N), comparing **CuLab**, **LabVIEW**, and **CuPy**.

| Tool / Size (M × N) | 64       | 128       | 256       | 512       | 1024      | 2048      | 4096      | 8192       |
|--------------------|----------|-----------|-----------|-----------|-----------|-----------|-----------|------------|
| **CuLab**          | 0.00004  | 0.000059  | 0.000151  | 0.000424  | 0.001383  | 0.0055    | 0.026174  | 0.14378    |
| **LabVIEW**        | 0.000008 | 0.000083  | 0.000481  | 0.003748  | 0.030043  | 0.239559  | 1.918907  | 15.7306  |
| **CuPy**           | 0.000281 | 0.000264  | 0.000289  | 0.000619  | 0.001876  | 0.008084  | 0.036448  | 0.17999|


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
<img " alt="image" src="https://github.com/user-attachments/assets/300490b3-b46f-4768-8198-204074a1daa1" />
   <p align="center"><i>GEMM_Top.vi Block Diagram</i> <br/>


</p>

<br/>

**GEMM_CuLab.vi**

<p align="center">
 <img alt="image" src="https://github.com/user-attachments/assets/45bcddfa-372f-411f-991c-3039ff7fbcc5" />
  <p align="center"><i>GEMM_CuLab.vi Block Diagram</i> <br/>
</p>

<br/>

**GEMM_LabVIEW.vi**

<p align="center">
 <img width="1087" height="418" alt="image" src="https://github.com/user-attachments/assets/a093a04d-a109-4dba-81c4-87e7e95f6e3f" />
<p align="center"><i>GEMM_LabVIEW.vi Block Diagram</i> 
  <br/>
</p>

<br/>

