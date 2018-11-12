
f=10; %Hz
A=2; %Volt
fs=20*f;
t=0:1/fs:1;
s_n=A*sin(2*pi*f*t);

[S_k] = dft(s_n);
N=length(S_k);
k=0:(N-1)/2;
F = (fs)*(0:(N-1)/2)/N;
plot(F,fs*abs(S_k(k+1))/N)

xlabel('f(Hz)');
ylabel('amplitude(V)');


