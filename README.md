# wireless_2026_radio_noiseexp2
Objective: To simulate the process of adding and removing noise from a signal using MATLAB.  

This experiment provides hands-on experience with adding noise to a signal, visualizing the effects, and implementing a simple noise removal technique using a low-pass filter. 


This repository contains a MATLAB-based simulation designed to explore the fundamentals of signal corruption and restoration. The experiment focuses on generating a clean sinusoidal signal, introducing Additive White Gaussian Noise (AWGN), and implementing a Butterworth Low-Pass Filter (LPF) to recover the original information.

This project is essential for understanding the trade-offs in digital signal processing, such as noise reduction versus signal distortion.

The core of this lab involves a three-step signal processing pipeline:

1. Signal Generation
A pure 5 Hz sine wave is generated to represent the "useful" information.

Sampling Frequency (f_s): 1000 Hz

 Signal Frequency (f_{sig}): 5 Hz

2. Adding Gaussian NoiseRandom Gaussian noise is added to the signal. This simulates real-world interference where the signal-to-noise ratio (SNR) is degraded.

3. Noise Removal (Low-Pass Filtering)
We use a 4th Order Butterworth Filter.

The Logic: Since our signal is low-frequency (5 Hz) and the noise is spread across all frequencies (up to 500 Hz), we set a "cutoff" at 10 Hz.

The Result: Frequencies above 10 Hz are attenuated (blocked), while frequencies below 10 Hz pass through.

Time Domain: The "clean" sine wave becomes jagged and unrecognizable after noise is added.

Frequency Domain: The PSD shows that the filter successfully "rolls off" high-frequency components, leaving a smoother version of the original signal.

Trade-off: Filtering introduces a slight Phase Lag (time shift) and potential Amplitude Reduction depending on how close the cutoff frequency is to the signal frequency.

All the plots and MATLAB Code itself can be seen in this repository

Some plots are different due to changes in noise level, level of frequency and order
