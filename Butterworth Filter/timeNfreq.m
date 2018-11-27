function [xn3, t, xf, f]  =  timeNfreq(f1, f2, A1, A2)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
fs = 20*max(f1,f2);
t = 0:1/fs:0.1;
xn1 = A1*cos(2*pi*f1*t);
xn2 = A2*cos(2*pi*f2*t);
xn3 = xn1 + xn2;

% figure(1)
% plot(t, xn3);
% suptitle('Time domain cos(f1)+cos(f2)');
% xlabel('time (sec)');
% ylabel('amplitude (Volts)');

% N = length(t);
% f = -fs/2:fs/(N-1):fs/2;
% xf = abs(fftshift(fft(xn3)))/N;


% figure(2)
% plot(f, xf);
% suptitle('Frequency domain cos(f1)+cos(f2)');
% xlabel('freq (Hz)');
% ylabel(' X(f)');
% xlim([-1000 1000])

N2 = 2^(nextpow2(length(t))); % next power of 2 of time or signal vector
[xf, N_f, k ] = practicalFFT1(xn3, t, N2);


figure(1)
subplot(2, 1, 1);
plot(t, xn3);
title('signal A1cos(f1)+A2cos(f2) in time');
xlabel('Time[Sec]');
ylabel('x(t) Amp[V]');
subplot(2, 1, 2);
plot(k*(fs/N_f),xf(k+1))%turns (k) value to physical units (HZ)suptitle('Frequency domain cos(f1)+cos(f2)');
title('signal A1cos(f1)+A2cos(f2) in frequency');
xlabel('Freq (Hz)');
ylabel(' x(f) Amp[V]');
xlim([0 1000])
end

