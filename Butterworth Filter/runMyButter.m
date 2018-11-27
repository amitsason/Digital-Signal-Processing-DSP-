% N - number of samples in interval [0 , pi]

f1 = 200; %(Hz)
f2 = 600; %(Hz)
fs = 20*max(f1, f2);
A1 = 1;   %(Volt)
A2 = 3;   %(Volt)
n  = 4;   %order of filter
N = 512;  % N - number of samples in interval [0 , pi]
[xn, t] = timeNfreq(f1, f2, A1, A2);
[b, a] = myButter(f1, f2, n);

figure(2)
freqz(b, a, N, fs);

[Yfilt] = filter(b, a, xn);
N2 = 2^(nextpow2(length(t))); % next power of 2 of time or signal vector
[S_f, N_f, k ] = practicalFFT1(Yfilt, t, N2);

figure(3)
subplot(2, 1, 1);
plot(t, Yfilt);
title('filtered signal in time');
xlabel('Time[Sec]')
ylabel('x(t) Amp[V]')

subplot(2, 1, 2);
plot(k*(fs/N_f),S_f(k+1))%turns (k) value to physical units (HZ)
title('filtered signal in frequency (n = 4)')
xlabel('Frequency[Hz]')
ylabel('x(f) Amp[V]')
xlim([0 1000]);

% figure(3)
% plot(t, Yfilt);
% title('filtered signal in time');

% figure(4)
% plot(k*(fs/N_f),S_f(k+1))%turns (k) value to physical units (HZ)
% title('FFT of S for N=512')
% xlabel('Frequency[Hz]')
% ylabel('Amp[V]')
% xlim([0 1000]);