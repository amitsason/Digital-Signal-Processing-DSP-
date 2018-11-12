%RunShortDFT
f=10; %Hz
A=2; %Volt
fs=20*f;
t=0:1/fs:1;
% s_t=A*cos(2*pi*f*t);
s_n=A*sin(2*pi*f*t);
N=length(s_n);
[S_k] = SHORT_DFT(s_n,N);

k=0:(N-1)/2;
figure;
plot(k,abs(S_k(k+1)/N))

[xn] = SHORT_IDFT(S_k,N);
figure;
plot(t,xn)