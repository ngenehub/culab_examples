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

| Size        | 1024   | 2048   | 4096   | 8192   | 16384  | 32768  | 65536  | 131072 | 262144 | 524288 | 1048576 | 2097152 | 4194304 | 8388608 | 16777216 | 33554432 | 67108864 |
|------------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|---------|---------|---------|---------|----------|----------|----------|
| **CuLab**   | 26u    | 33u    | 43u    | 59u    | 97u    | 116u   | 177u   | 332u   | 501u   | 855u   | 1.643m  | 3.234m  | 6.2m    | 12.409m | 25.107m  | 49.336m  | 97.768m  |
| **LabVIEW** | 7u     | 16u    | 34u    | 84u    | 222u   | 475u   | 1.033m | 2.216m | 5.093m | 14.875m| 34.042m | 74.939m | 156.47m | 341.37m | 804.774m | 1.961839 | 3.783935 |
| **CuPy**    | 102u    | 105u    | 108u    | 115u    | 136u    | 159u    | 219u    | 488u    | 778u    | 1.416m  | 2.774m  | 5.581m  | 11.203m | 22.492m | 45.094m  | 89.078m  | 176.652m |


### CuLab Performance Gain

The table below shows the performance gain of **CuLab** compared to **LabVIEW** and **CuPy**.

| CuLab vs | Mean Gain | Max Gain |
|:-------------:|:------------:|:------------:|
| **LabVIEW**   | 15.09      | 39.76      |
| **CuPy**      | 1.92       | 3.92       |


**Conclusion**

CuLab significantly outperforms LabVIEW (mean gain **15×**, max **40×**) and CuPy (mean gain **2×**, max **4×**). The performance gain over LabVIEW is more noticeable on larger data sizes, while the gain over CuPy is more evident on smaller data sizes due to Python's overhead.


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


