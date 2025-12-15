### Benchmark Description
1D FFT performance comparison across multiple input sizes for **CuLab**, **LabVIEW**, and **CuPy**.


### FFT1D_Top.vi
<p align="center">
  <img alt="image" src="https://github.com/user-attachments/assets/96c9ea78-a189-475c-80f7-ea549158f208"/>
  <p align="center"><i>FFT1D_Top.vi Front Panel</i> <br/>

</p>

<br/>

### Benchmark Results - Execution Time (seconds)

The table below compares execution times for different data sizes using **CuLab**, **LabVIEW**, and **CuPy**. Each column represents the input size, and each row shows the measured execution time in seconds for the corresponding framework.

| Size | 1024 | 2048 | 4096 | 8192 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576 | 2097152 | 4194304 | 8388608 | 16777216 | 33554432 | 67108864 |
|-----------|------|------|------|------|-------|-------|-------|--------|--------|--------|---------|---------|---------|---------|----------|----------|----------|
| **CuLab**   | 0.000026 | 0.000033 | 0.000043 | 0.000059 | 0.000097 | 0.000116 | 0.000177 | 0.000332 | 0.000501 | 0.000855 | 0.001643 | 0.003234 | 0.0062 | 0.012409 | 0.025107 | 0.049336 | 0.097768 |
| **LabVIEW** | 0.000007 | 0.000016 | 0.000034 | 0.000084 | 0.000222 | 0.000475 | 0.001033 | 0.002216 | 0.005093 | 0.014875 | 0.034042 | 0.074939 | 0.15647 | 0.34137 | 0.804774 | 1.961839 | 3.783935 |
| **CuPy**    | 0.000102 | 0.000105 | 0.000108 | 0.000115 | 0.000136 | 0.000159 | 0.000219 | 0.000488 | 0.000778 | 0.001416 | 0.002774 | 0.005581 | 0.011203 | 0.022492 | 0.045094 | 0.089078 | 0.176652 |


### CuLab Performance Gain

The table below shows the performance gain of **CuLab** compared to **LabVIEW** and **CuPy**.

| CuLab vs | Mean Gain | Max Gain |
|:-------------:|:------------:|:------------:|
| **LabVIEW**   | 15.09      | 39.76      |
| **CuPy**      | 1.92       | 3.92       |


**Conclusion**

CuLab significantly outperforms LabVIEW (mean gain **15×**, max **40×**) and CuPy (mean gain **2×**, max **4×**), with its advantage most noticeable on **larger data sizes**.


### Project VI Implementation

Implementation of the project VI is provided below.

**FFT1D_Top.vi**
<p align="center">

  <img alt="image" src="https://github.com/user-attachments/assets/ed2c33d9-78ca-4844-8534-9e0548e4c186" />
    <p align="center"><i>FFT1D_Top.vi Block Diagram</i> <br/>


</p>

<br/>

**FFT1D_CuLab.vi**

<p align="center">
 <img alt="image" src="https://github.com/user-attachments/assets/7133948d-98ee-49ef-8b58-7248687d7acd" />
  <p align="center"><i>FFT1D_CuLab.vi Block Diagram</i> <br/>
</p>

<br/>

**FFT1D_LabVIEW.vi**

<p align="center">
 <img alt="image" src="https://github.com/user-attachments/assets/0798591f-3089-4393-8771-c4eefbb26af1" />
  
<p align="center"><i>FFT1D_LabVIEW.vi Block Diagram</i> 
  <br/>
</p>

<br/>


