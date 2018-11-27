function [S_f, N_f, k ] = practicalFFT1(S, t, N)
%MYpracticalFFT Calculate the double-sided 
%spectrum and single-sided spectrum of a signal.
% S = signal in time
% t = time vector
% N = N point zero padded vector in powers of two
% S_f = signal in frequency domain
% for example: S = (2, 4.3, 4.1, 2.32, 6.3)
%length of S is 5 after padding with zeroes wtih power of two
%S = (2, 4.3, 4.1, 2.32, 6.3, 0, 0, 0) lenght of S is 8
% N = 3 (2^3 = 8)
len_S = length(t);
S_f = abs(fft(S,N))/(len_S/2);
N_f = length(S_f);
k = 0:(N_f-1)/2;

end

