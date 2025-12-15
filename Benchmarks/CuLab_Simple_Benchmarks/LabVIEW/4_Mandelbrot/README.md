
### Benchmark Description
Mandelbrot performance comparison across multiple input resolution for **CuLab**, **LabVIEW**, and **CuPy**.


### Mandelbrot_Top.vi
<p align="center">
  <img alt="image" src="https://github.com/user-attachments/assets/6ccaea30-eec6-408d-92a1-4af051c71209" />
  <p align="center"><i>Mandelbrot_Top.vi Front Panel</i> <br/>

</p>

<br/>

**Mandelbrot Benchmark**

This benchmark measures execution time of **Mandelbrot set computation** for different iteration counts, comparing **CuLab**, **LabVIEW**, and **CuPy**.  
All values are in **seconds**.

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
  <img  alt="image" src="https://github.com/user-attachments/assets/4f95241d-c5c3-4004-af30-05f6f1f04d2b" />
   <p align="center"><i>Mandelbrot_Top.vi Block Diagram</i> <br/>


</p>

<br/>

**Mandelbrot_CuLab.vi**

<p align="center">
  <img width="1495" height="641" alt="image" src="https://github.com/user-attachments/assets/082cfb1f-75f7-4810-aae3-b1d7df5e1aef" />

  <p align="center"><i>Mandelbrot_CuLab.vi Block Diagram</i> <br/>
</p>

<br/>

**Mandelbrot_LabVIEW.vi**

<p align="center">
<img alt="image" src="https://github.com/user-attachments/assets/fc00154a-fb03-4a10-8f7c-4e7947cfc866" />
<p align="center"><i>Mandelbrot_LabVIEW.vi Block Diagram</i> 
  <br/>
</p>

<br/>
