function [b, a ] = myButter( f1, f2, n )
% our goal is to build a digital low pass butterworth filter.
% the form of the filter is:
% H(z) = Y(z)/X(z) = (b0 + b1*z^(-1) + b2*z^(-2)+...bn*z^(-n))
%                    ------------------------------------------
%                    (1  + a1*z^(-1) + a2*z^(-2)+...am*z^(-m))

% given a signal in time with two frequencies f1 and f2
% myButter calculates the a and b filter coefficients vectors.
% myButter recieves:
% f1 - first frequency
% f2 - second frequency
% n  - order of filter
% a  - poles coefficients vector of butterworth filter
% b  - zeros coefficients vector of butterworth filter

%[B,A] = butter(N,Wn)
fs = 20*max(f1, f2);
fmin = min(f1, f2);
fcut = 1.2*fmin;   % we set fcut to be 20% far from the minimal frequency
Wn = fcut/(fs/2);  % normalized cutoff frequency

[b, a] = butter(n, Wn);

end

