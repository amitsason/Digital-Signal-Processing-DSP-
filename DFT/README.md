# FFT algorithems and implementation #
Here we find two matlab files :
* **dft.m** - dft function implemented with two for loops.
* **RunDFT** - script who runs dft.m function.
* **SHORT_DFT** - dft function implemented with matrix multiplication  instead of loops, faster for large inputs.
* **RunShort_DFT** - script who runs SHORT_DFT function.
* **timeNfreq** - function who recieves two frequencies and two amplitudes, show them in time domain and frequency domain using matlabs fft().

let us take the example of using the **timeNfreq()** function.
we will simulate two sine waves in the form of **Asin(2pift)**:
**timeNfreq(34,78,2,3)** show the signal **2sin(2pi34t) + 3sin(2pi78t)**
* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/DFT/time%20domain.jpg)
* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/DFT/freq%20domain.jpg)

