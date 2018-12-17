
# Band Pass Filtering #
----
In this project we want to filter one frequency from a superposition signal of 3 frequencies.

----

for this purpose I built a matlab function that recieves 3 frequencies f1<f2<f3 and 3 amplitudes A1 A2 A3.
the function creates a signal in the form of A1sin(f1t)+A2sin(f2t)+A3sin(f3t).
i chose:
* f1 = 200Hz
* f2 = 600Hz
* f3 = 900Hz
A1 = A2 = A3 = 2V

the signal in time and frequency:

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Band%20Pass%20Filter/images/original%20signal%20t%26f.JPG)

then we create a vector of 2 elements which are our upper and lower cutoff frequencies and create a bandpass filter:

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Band%20Pass%20Filter/images/band%20pass%20filter.JPG)

then we filter the signal and plot the result:

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Band%20Pass%20Filter/images/filtered%20signal.JPG)

we can see that the filtered signal is lagging a bit untill it is stablized due to the nature of our FIR filter.





