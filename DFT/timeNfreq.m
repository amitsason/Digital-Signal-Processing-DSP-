function  timeNfreq(f1, f2, A1, A2)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
fs = 20*max(f1,f2);
t = 0:1/fs:1;
xn1 = A1*cos(2*pi*f1*t);
xn2 = A2*cos(2*pi*f2*t);
xn3 = xn1 + xn2;

figure(1)
plot(t, xn3);
suptitle('Time domain cos(f1)+cos(f2)');
xlabel('time (sec)');
ylabel('amplitude (Volts)');

N = length(t);
f = -fs/2:fs/(N-1):fs/2;
xf = abs(fftshift(fft(xn3)))/N;


figure(2)
plot(f, xf);
suptitle('Frequency domain cos(f1)+cos(f2)');
xlabel('freq (Hz)');
ylabel(' X(f)');
xlim([-100 100])

end

