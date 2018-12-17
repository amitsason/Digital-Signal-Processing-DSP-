%code by: AMIT SASON 12/12/18

load handel;
sound(y, Fs)

x_t = y;                        
t = (0:1/Fs:(length(x_t)-1)/Fs);  %time axis 

figure(1)
plot(t, x_t);                      %plot signal in Time domain
title('Original signal in TIME');
xlabel('Time (seconds)')
ylabel('Amplitude')

X_f=abs(fftshift(fft(x_t)))/length(t); %two sided fourier transform
f=-Fs/2:Fs/(length(t)-1):Fs/2;         %frequency axis

figure(2)                          %plot signal in frequency domain
plot(f, X_f)
title('Original signal in Frequency');
xlabel('frequency (Hz)')
ylabel('Amplitude')

[M]=find(X_f>0.008);     %finds the indeces of frequency with power above 0.008
fmax = f(max(M));        %find the maximal frequency with power over 0.008
Wcut = fmax/(Fs/2)+0.07; 
b1 = fir1(34,Wcut,'high',chebwin(35,30));    % 35 = 34+1;FIR filter design

figure(3)
freqz(b1,1,512);   
title('HIGH PASS Chebichev Filter');

yfilt1 = filter(b1,1,x_t);
Y_f1=abs(fftshift(fft(yfilt1)))/length(t);

figure(4)
plot(t, yfilt1);                      %plot signal in Time domain
title('HIGH PASS filtered signal TIME');
xlabel('Time (seconds)')
ylabel('Amplitude')

figure(5)                          %plot signal in frequency domain
plot(f, Y_f1)
title('HIGH PASS filtered signal FREQUENCY');
xlabel('frequency (Hz)')
ylabel('Amplitude')

pause(10);
sound(yfilt1, Fs)
Wcut = fmax/(Fs/2)+0.15; 
b2 = fir1(34,Wcut,'low',chebwin(35,30));    % 35 = 34+1;FIR filter design
yfilt2 = filter(b2,1,x_t);
Y_f2=abs(fftshift(fft(yfilt2)))/length(t);
pause(10);
sound(yfilt2, Fs);

figure(6)
freqz(b2,1,512);   
title('LOW PASS Chebichev Filter');

figure(7)
plot(t, yfilt2);                      %plot signal in Time domain
title('LOW PASS filtered signal TIME');
xlabel('Time (seconds)')
ylabel('Amplitude')

figure(8)                          %plot signal in frequency domain
plot(f, Y_f2)
title('LOW PASS filtered signal FREQUENCY');
xlabel('frequency (Hz)')
ylabel('Amplitude')
