
% function [ XX] = dft( x)
%
% compute the DFT directly
% x = column vector of time samples (real)
% XX = column vector of complex – valued
% frequency – domain samples
function [XX] = dft(x)
N = length(x);
XX = zeros(N, 1);
for k = 0:N - 1
   wk = 2 *pi*k/N;
   for n = 0:N - 1
     XX(k + 1) = XX(k + 1) + x(n + 1) *exp( -1i *n *wk);
   end
end