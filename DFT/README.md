# FFT algorithems and implementation #
Here we find two matlab files :
* **dft.m** - dft function implemented with two for loops.
* **RunDFT** - script who runs dft.m function.
* **SHORT_DFT** - dft function implemented with matrix multiplication  instead of loops, faster for large inputs.
* **RunShort_DFT** - script who runs SHORT_DFT function.
* **timeNfreq** - function who recieves two frequencies and two amplitudes, show them in time domain and frequency domain using matlabs fft().

let us take the example of using the **timeNfreq()** function.
we will simulate two cosine waves in the form of **Acos(2pift)**:
**timeNfreq(34,78,2,3)** show the signal **2cos(2pi34t) + 3cos(2pi78t)**
* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/DFT/time%20domain.jpg)
* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/DFT/freq%20domain.jpg)

In **timeNfreq** the sampling frequency is defined by: fs = 20max(f1,f2).
increasing **fs** will give us higher resolution of the frequency axis. 
