# Digital Communication System Design for Bandpass RF Channels

## Overview
This project implements and analyzes an end-to-end **digital communication system** for transmitting and recovering a real-world speech signal over a **bandpass RF channel**. The system was designed and simulated in **MATLAB**, with emphasis on frequency-domain analysis, modulation/demodulation, filtering, and channel modeling.

The goal of the project was to develop strong system-level intuition for RF and communication systems by modeling each processing stage, validating spectral behavior, and debugging signal impairments to achieve reliable signal recovery.

---

## System Architecture
The communication system consists of the following major stages:

1. **Speech Signal Acquisition**
2. **Frequency-Domain Analysis (FFT)**
3. **Amplitude Modulation (AM)**
4. **Bandpass Channel Modeling**
5. **Receiver Demodulation**
6. **Filtering and Baseband Recovery**
7. **Signal Reconstruction and Validation**

Each stage was analyzed independently and as part of the full system to ensure correct spectral placement, bandwidth control, and amplitude normalization.

---

## Key Concepts and Techniques
- Digital communication system design  
- Bandpass channel modeling  
- AM modulation and demodulation  
- Convolution-based filtering  
- FFT-based spectral analysis  
- Frequency response visualization  
- System-level debugging and validation  

---

## Results
- Successfully transmitted and recovered a real-world speech signal through a bandpass channel centered at **6 kHz**
- Achieved **intelligible audio reconstruction** with stable magnitude spectra at each processing stage
- Verified correct bandwidth usage, spectral alignment, and amplitude scaling throughout the system
- Identified and resolved decoding issues related to filtering, frequency shifts, and normalization

---

## Tools and Technologies
- **MATLAB**
- FFT-based signal analysis
- Custom plotting and visualization tools

---

## Learning Outcomes
This project strengthened practical understanding of:
- RF and communication system behavior in the frequency domain
- Trade-offs between bandwidth, filtering, and signal integrity
- Debugging multi-stage signal processing systems
- Translating communication theory into working simulations

![RF Project](https://github.com/user-attachments/assets/c59d2823-064e-4286-bdd5-5c1114795ad4)
