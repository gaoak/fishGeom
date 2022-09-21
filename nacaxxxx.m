function [y] = nacaxxxx(tk, x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x = abs(x);
xs = zeros(length(x), 5);
xs(:, 1) = x;
for i=2:1:4
    xs(:,i) = xs(:,i-1) .* x;
end
y = 5.*tk*(0.2969*sqrt(x) -0.1260*xs(:,1) - 0.3516*xs(:,2) + 0.2843*xs(:,3) - 0.1015*xs(:,4));
end