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

| Tool / Size | 32        | 64        | 128       | 256       | 512       | 1024      | 2048      | 4096      | 8192      | 16384     | 32768     | 65536     | 131072    | 262144    | 524288    | 1048576   | 2097152   | 4194304   | 8388608   |
|-------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| **CuLab**   | 0.000108  | 0.000142  | 0.000141  | 0.000139  | 0.000145  | 0.000131  | 0.000183  | 0.000182  | 0.000187  | 0.000175  | 0.000199  | 0.000218  | 0.000276  | 0.000419  | 0.000677  | 0.001559  | 0.002415  | 0.004876  | 0.009647  |
| **LabVIEW** | 0.000002  | 0.000002  | 0.000004  | 0.000006  | 0.000012  | 0.000026  | 0.000057  | 0.000114  | 0.000235  | 0.000488  | 0.001145  | 0.003131  | 0.006397  | 0.012834  | 0.027313  | 0.076050  | 0.168939  | 0.384017  | 0.818562  |
| **CuPy**    | 0.000329  | 0.000346  | 0.000338  | 0.000341  | 0.000341  | 0.000423  | 0.000429  | 0.000410  | 0.000416  | 0.000431  | 0.000436  | 0.000461  | 0.000518  | 0.000774  | 0.001032  | 0.002271  | 0.003768  | 0.007598  | 0.014999  |


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
