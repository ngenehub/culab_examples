
### Benchmark Description
Mandelbrot performance comparison across multiple input resolution for [**CuLab**](https://www.ngene.co/gpu-toolkit-for-labview), **LabVIEW**, and **CuPy**.


### Mandelbrot_Top.vi
<p align="center">
<img alt="image" src="https://github.com/user-attachments/assets/b4e70008-7a51-43f8-a06c-edc0b9408489" />
  <p align="center"><i>Mandelbrot_Top.vi Front Panel</i> <br/>

</p>

<br/>

### Mandelbrot Benchmark

This benchmark measures execution time of **Mandelbrot set computation** for different iteration counts, comparing **CuLab**, **LabVIEW**, and **CuPy**.  
All values are in **seconds**.

### [System Information](https://github.com/ngenehub/culab_examples/tree/main/Benchmarks/CuLab_Simple_Benchmarks#system-information)

### Benchmark Results – Execution Time

| Resolution | 100      | 200      | 300      | 400      | 500      | 600      | 700      | 800      | 900      | 1000     |
|------------|----------|----------|----------|----------|----------|----------|----------|----------|----------|----------|
| **CuLab**   | 126m     | 139m     | 145m     | 146m     | 139m     | 142m     | 149m     | 177m     | 222m     | 270m     |
| **LabVIEW** | 101m     | 398m     | 905m     | 1.65     | 2.61     | 3.85     | 5.2      | 6.89     | 8.76     | 10.8     |
| **CuPy**    | 376m     | 363m     | 353m     | 352m     | 354m     | 352m     | 350m     | 354m     | 396m     | 361m     |


### CuLab Performance Gain

The table below shows the performance gain of **CuLab** compared to **LabVIEW** and **CuPy**.

| CuLab vs | Mean Gain | Max Gain |
|:-------------:|:------------:|:------------:|
| **LabVIEW**   | 22.06      | 40.08      |
| **CuPy**      | 2.29       | 2.99       |


**Conclusion**

CuLab significantly outperforms LabVIEW (mean gain **22×**, max **40×**) and CuPy (mean gain **2×**, max **3×**).
The performance gain over LabVIEW is more noticeable on larger data sizes, while the gain over CuPy is more evident on smaller data sizes due to Python's overhead.


### Project VI Implementation

Implementation of the project VI is provided below.

**Mandelbrot_Top.vi**
<p align="center">
<img width="1541" height="541" alt="image" src="https://github.com/user-attachments/assets/abd662ec-e607-488d-9a9f-bf2e72b0273c" />
   <p align="center"><i>Mandelbrot_Top.vi Block Diagram</i> <br/>


</p>

<br/>

**Mandelbrot_CuLab.vi**

<p align="center">
<img width="1278" height="568" alt="image" src="https://github.com/user-attachments/assets/43382f66-31a0-4166-8eb1-2a92b9266efb" />

  <p align="center"><i>Mandelbrot_CuLab.vi Block Diagram</i> <br/>
</p>

<br/>

**Mandelbrot_LabVIEW.vi**

<p align="center">
<img width="1160" height="536" alt="image" src="https://github.com/user-attachments/assets/8c04559c-af54-486f-82f5-9ef4bd8ab13c" />
<p align="center"><i>Mandelbrot_LabVIEW.vi Block Diagram</i> 
  <br/>
</p>

<br/>
