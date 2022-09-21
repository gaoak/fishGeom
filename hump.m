function [y] = hump(x, Amp, ct, lambda, phase)
%UNTITLED3 Summary of this function goes here
%   x, Amp are vectors
%   lambda, phase are scalars
y = Amp .* sin(2*pi/lambda * ( x -ct )+ phase);
end

