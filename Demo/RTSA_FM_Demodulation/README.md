# RTSA_FM_Demodulation Demo/Benchmark

<div align="center">

[![IMAGE ALT TEXT](https://github.com/user-attachments/assets/afb02d12-68a4-429c-9c7c-8b6056607e16)](https://youtu.be/7bgtF0vozMA?si=fUHSkk06OSuy0rMe "Video Title")
<i>Demo Video (Click the Image to Preview Video)</i>

</div>

## **Introduction** 
This project is designed to demonstrate the implementation of **real-time spectrum analysis**, **channelization**, and **FM demodulation** using **[CuLab](https://www.ngene.co/gpu-toolkit-for-labview)**.  
It also benchmarks the execution speed of the same functionality implemented in **LabVIEW**.

## **Processing Pipeline**

The processing pipeline of the demo is presented in the diagram below.

<p align="center">
<img width="1995" height="1137" alt="image" src="https://github.com/user-attachments/assets/cd191482-a0dc-406f-864b-4e49c886244e" />
<div align="center"><i>High level Diagram of RTSA_FM_Demodulation.vi</i></div>
<br/>

It incorporates the following stages:

1. **Data Streaming** from a **[TDMS file](https://www.dropbox.com/scl/fi/tr5yem49n1hzthgzgqsjo/FM-Band-RFData_I8.tdms?rlkey=xwqjkdokzrzsobmq4luixgd2a&st=ix34mwe9&dl=1)** (**BandWidth = 40 MHz, Center Frequency = 92.63 MHz**)
2. **Digital downconversion (DDC)** of the selected FM channel by a factor of **1/50 (BW=800 kHz)**
3. **Low-pass filtering** with **Fc = 100 kHz**
4. **FM demodulation**
5. **Resampling** of the demodulated signal down to **44.1 kSa/s**
6. **Low-pass filtering** using an **FIR filter** with **Fc = 16 kHz**
7. **Demodulated signal Streaming** to **audio device** for playback
8. **Signal monitoring** using **spectrum** and **spectrogram waterfall** displays

-------------------------------

The results demonstrate **up to [22× performance improvement](#rtsa_fm_demodulationvi-config-tab)** using **CuLab**.


## System Information
### Software
- **LabVIEW Version:** 2020 x64
- **CuLab Version:** [5.0.1](https://www.ngene.co/culab-download) 

### Hardware
- **CPU:** Intel(R) Core(TM) i7-8700K  
- **GPU:** NVIDIA GeForce RTX 2080 Ti

----

# Project Contents

<p align="center">
<img width="399" height="311" alt="image" src="https://github.com/user-attachments/assets/7707f379-6f00-4d72-b8f1-5ce63f1d51df" />
</p>

<br/>


## RTSA_FM_Demodulation.vi (Display Tab)
<p align="center">
<img width="1566" height="999" alt="image" src="https://github.com/user-attachments/assets/a7931219-b8c2-4ff4-bac4-885e5de8afa0" />
<div align="center"><i>Front Panel(Display Tab) of RTSA_FM_Demodulation.vi</i></div>
<br/>


## RTSA_FM_Demodulation.vi (Config Tab)
<p align="center">
<img width="1763" height="1125" alt="image" src="https://github.com/user-attachments/assets/bb3ea1d7-f3a4-492c-8114-0cbf90bee022" />
<div align="center"><i>Front Panel(Config Tab) of RTSA_FM_Demodulation.vi</i></div>
<br/>


<p align="center">
<img width="1584" height="805" alt="image" src="https://github.com/user-attachments/assets/706b883d-5ab8-46df-9240-e689669dd6e5" />
<div align="center"><i>Block Diagram of RTSA_FM_Demodulation.vi (Data Processing CuLab part)</i></div>
<br/>

<p align="center">
<img width="1586" height="803" alt="image" src="https://github.com/user-attachments/assets/76ff9b14-2ddc-4c3f-a8cc-0075f524f0f3" />
<div align="center"><i>Block Diagram of RTSA_FM_Demodulation.vi (Data Processing LabVIEW part)</i></div>
<br/>


