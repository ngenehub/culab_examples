### Benchmark Description
Conv1D performance comparison across multiple input sizes for **CuLab**, **LabVIEW**, and **CuPy**.


### Conv1D_Top.vi
<p align="center">
  <img  alt="image" src="https://github.com/user-attachments/assets/fa37403a-8599-4432-a5d6-ba53065553a4" />
  <p align="center"><i>Conv1D_Top.vi Front Panel</i> <br/>

</p>

<br/>

**1D Convolution Benchmark**

This benchmark measures execution time of **1D convolution** for different input sizes, comparing **CuLab**, **LabVIEW**, and **CuPy**.


|  Size | 32     | 64     | 128    | 256    | 512    | 1024   | 2048   | 4096   | 8192   | 16384  | 32768  | 65536  | 131072 | 262144 | 524288 | 1048576 | 2097152 | 4194304 | 8388608 |
|-------------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|---------|---------|---------|---------|
| **CuLab**   | 108u   | 142u   | 141u   | 139u   | 145u   | 131u   | 183u   | 182u   | 187u   | 175u   | 199u   | 218u   | 276u   | 419u   | 677u   | 1.559m  | 2.415m  | 4.876m  | 9.647m  |
| **LabVIEW** | 2u     | 2u     | 4u     | 6u     | 12u    | 26u    | 57u    | 114u   | 235u   | 488u   | 1.145m | 3.131m | 6.397m | 12.834m| 27.313m| 76.050m | 168.939m| 384.017m| 818.562m|
| **CuPy**    | 329u   | 346u   | 338u   | 341u   | 341u   | 423u   | 429u   | 410u   | 416u   | 431u   | 436u   | 461u   | 518u   | 774u   | 1.032m | 2.271m  | 3.768m  | 7.598m  | 14.999m |


### CuLab Performance Gain

The table below shows the performance gain of **CuLab** compared to **LabVIEW** and **CuPy**.

| CuLab vs | Mean Gain | Max Gain |
|:-------------:|:------------:|:------------:|
| **LabVIEW**   | 21.16      | 84.85      |
| **CuPy**      | 2.15       | 3.23       |


**Conclusion**

CuLab significantly outperforms LabVIEW (mean gain **21×**, max **85×**) and CuPy (mean gain **2×**, max **3×**).
The performance gain over LabVIEW is more noticeable on larger data sizes, while the gain over CuPy is more evident on smaller data sizes due to Python's overhead.


### Project VI Implementation

Implementation of the project VI is provided below.

**Conv1D_Top.vi**
<p align="center">
<img alt="image" src="https://github.com/user-attachments/assets/bbe66d5b-a4c2-4d2e-bc4f-b82f292e619e" />
   <p align="center"><i>Conv1D_Top.vi Block Diagram</i> <br/>


</p>

<br/>

**Conv1D_CuLab.vi**

<p align="center">
 <img alt="image" src="https://github.com/user-attachments/assets/c59d8bed-0449-45bd-953c-45b1074318d6" />
  <p align="center"><i>Conv1D_CuLab.vi Block Diagram</i> <br/>
</p>

<br/>

**Conv1D_LabVIEW.vi**

<p align="center">
<img alt="image" src="https://github.com/user-attachments/assets/b348f1aa-b7fb-428c-911a-33ae43a97a0c" />
<p align="center"><i>Conv1D_LabVIEW.vi Block Diagram</i> 
  <br/>
</p>

<br/>
