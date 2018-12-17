function BPF_MyFilter(f1,f2,f3,A1,A2,A3)

fmax=max([f1,f2,f3]);
fs=50*fmax;
t=0:1/fs:1;
x_t=A1*sin(2*pi*f1*t)+A2*sin(2*pi*f2*t)+A3*sin(2*pi*f3*t);
F=-fs/2:fs/(length(t)-1):fs/2;
X_f=abs(fftshift(fft(x_t)))/length(t);
%%
%Plot before filter:
figure(1)
subplot(2,1,1)
plot(t,x_t)
title('the signal in time before filter')
xlim([0 0.1])

subplot(2,1,2)
plot(F,X_f)
title('the signal in frequency before filter')

%%
% fmin=min(f1,f2);
fcut1=0.8*f2;
fcut2=1.2*f2;
fcut=[fcut1,fcut2];
Wn=fcut/(fs/2); %normalize (0-1) cutoff freq
[b,a]=butter(5,Wn); %bandpass filter if we want high pass we write 'high' etc
figure(2)
freqz(b,a,128,fs)

y_t=filter(b,a,x_t);
Y_f=abs(fftshift(fft(y_t)))/length(t);

figure(3)
subplot(2,1,1)
plot(t,y_t)
title('the signal in time After filter')
xlim([0 0.1])

subplot(2,1,2)
plot(F,Y_f)
title('the signal in frequency After filter')

