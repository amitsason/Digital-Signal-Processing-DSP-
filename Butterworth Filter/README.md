make sure that all of the matlab files above are in your directory.
run runMyButter.m to see results. runMyButter.m uses practicalFFT1.m myButter.m and timeNfreq.m functions.

we want to create a digital butterworth filter in the form of:
* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Butterworth%20Filter/images/formula1.JPG)

a scheme of such filter can be described like this:

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Butterworth%20Filter/images/formula2.JPG)


let us take a signal consisting of two cosine waves with two frequencies:
* f1 = 200Hz,  A1 = 1V
* f2 = 600Hz,  A2 = 3V

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Butterworth%20Filter/images/signalInTnF.JPG)

than we decide the order of the filter n. the bigger the n is, the sharper the filter is.
the sharpness of the filter (frequency response) comes with a price because when n is big it takes more time to get the result, thus implementing such a filter in real time systems is not effective, the smaller the n is, the faster we get our result, but the frequency response is not as sharp.

we start with n = 2:
 the filter Time and Phase response:
 * ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Butterworth%20Filter/images/filterTimeNPhase.JPG)
 
 we set in the function myButter.m the cutoff frequency of the filter to be 20% larger from the minimal frequency.
 in our example minimal frequency is 200Hz so 1.2x200 = 240Hz. we see that in 240Hz the value is -3dB.
 * ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Butterworth%20Filter/images/-3dB.JPG)
 
 than we find b and a vectors and filter the signal.
 for n = 2 we get:
 * ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Butterworth%20Filter/images/filteredn2.JPG)
 
  for n = 3 we get:
  
  * ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Butterworth%20Filter/images/filteredn3.JPG)
  
  for n = 4 we get:
  
  * ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Butterworth%20Filter/images/filteredn4.JPG)
 
 
 


