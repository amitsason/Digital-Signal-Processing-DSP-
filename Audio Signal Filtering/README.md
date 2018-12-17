
# Audio Signal Filtering #
----
In this project we use pre-existing audio file in matlab called "handel"
when we load it we get 2 variables in the workspace:
y = a vector of the signals amplitude. 
Fs = 8192Hz sampling frequency.

----
by dividing the length of y by Fs we know that we have a signal of 8.9 seconds.
first we want to examine the signal characteristics in time and frequency by fourier transformation and a plot:

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Audio%20Signal%20Filtering/images/original%20signal%20in%20time.JPG)

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Audio%20Signal%20Filtering/images/original%20signal%20in%20freq.JPG)

we can see that most of the signals power is located below 2000Hz and we want to examine the influence of **low-pass** filtering and **high-pass** filtering on the audio quality. 

## High-Pass Chebyshev ##
we set our cutoff frequency to be 1400Hz with a **high-pass Chebyshev** filter of 34 order.

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Audio%20Signal%20Filtering/images/highpass%20chebichev%20filter.JPG)

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Audio%20Signal%20Filtering/images/high%20pass%20filtered%20in%20time.JPG)

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Audio%20Signal%20Filtering/images/high%20pass%20filtered%20in%20freq.JPG)

we can hear that the sound quality is very bad an we lost a lot of the information

## Low-Pass Chebyshev ##
now we try filtering with a **low-pass** Chebyshev filter of 34 order:


* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Audio%20Signal%20Filtering/images/low%20pass%20chebichev%20filter.JPG)

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Audio%20Signal%20Filtering/images/low%20pass%20filtered%20in%20time.JPG)

* ![picture alt](https://github.com/amitsason/Digital-Signal-Processing-DSP-/blob/master/Audio%20Signal%20Filtering/images/low%20pass%20filtered%20in%20freq.JPG)

we can see and hear that the sound quality is fair relativly to the original signal and much better than the high-pass filtered signal. this is due to preserving most of our information on the low spectrum.







