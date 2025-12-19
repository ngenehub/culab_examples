# Mandelbrot Zoom Demo/Benchmark
<div align="center">

[![IMAGE ALT TEXT](https://github.com/user-attachments/assets/19bbe627-a2d6-499b-8f7a-143fc2cd29fe)](https://youtu.be/45Oxfp0NO1c?si=fIFQxx88915GPpDP "Video Title")
<i>Demo Video (Click the Image to Preview Video)</i>

</div>



This demo presents a Mandelbrot zoom benchmark comparing [CuLab](https://www.ngene.co/gpu-toolkit-for-labview) with a naïve CPU-based LabVIEW implementation.
It measures end-to-end zoom animation time and demonstrates up to ***25x*** performance improvement (***CuLab: 23.5s*** vs ***LabVIEW: 579s***), highlighting CuLab’s efficiency in executing large numbers of small GPU kernels sequentially.


## System Information
### Software
- **LabVIEW Version:** 2020 x64
- **CuLab Version:** 5.0.1 

### Hardware
- **CPU:** Intel(R) Core(TM) i7-8700K  
- **GPU:** NVIDIA GeForce RTX 2080 Ti

----

# Project Contents

<p align="center">
<img width="281" height="304" alt="image" src="https://github.com/user-attachments/assets/063d336f-1c65-4b51-83f6-e6139d748f8d" />
</p>

<br/>


## Mandelbrot_CuLab.vi
<p align="center">
<img width="699" height="624" alt="image" src="https://github.com/user-attachments/assets/986a308d-45cc-46e6-ae93-49d9f4e52bbf" />
<div align="center"><i>Front Panel of Mandelbrot_CuLab.vi</i></div>
<br/>

<p align="center">
<img width="1503" height="681" alt="image" src="https://github.com/user-attachments/assets/aec0f5c9-bf34-4a14-855a-44cb45516dbe" />
<div align="center"><i>Block Diagram of Mandelbrot_CuLab.vi</i></div>
<br/>

## Mandelbrot_LabVIEW.vi
<p align="center">
<img width="699" height="624" alt="image" src="https://github.com/user-attachments/assets/ff63008f-d8a6-4f89-936e-fe588e785cf6" />
<div align="center"><i>Front Panel of Mandelbrot_LabVIEW.vi</i></div>
<br/>
<p align="center">
<img width="1392" height="679" alt="image" src="https://github.com/user-attachments/assets/f817d23a-e3a2-4105-ab4f-94e00e5ac5df" />
<div align="center"><i>Block Diagram of Mandelbrot_LabVIEW.vi</i></div>
<br/>

<br/>


