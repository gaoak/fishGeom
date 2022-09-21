clc;
close all;
setPlotParameters;
%%
sub0 = 0:0.001:0.1;
sub1 = 0.1:0.002:0.4;
sub2 = 0.4:0.01:1;
x = [ sub0 sub1 sub2 ]';
thick = 0.12;
lambda = 0.15;
phase0 = 0;
ct = 0;
%%
halft = nacaxxxx(thick, x);
amplitude = max(0, 1 - 25*(x - 0.3).^2) * 0.03;
wave = hump(x, amplitude, ct, lambda, phase0);
upper = halft + wave;
lower =-halft;
%% AoA
AoA = -15/180*pi;
cs = cos(AoA);
sn = sin(AoA);
x0     = cs * x - sn * upper;
upper0 = sn * x + cs * upper;
x1     = cs * x - sn * lower;
lower1 = sn * x + cs * lower;
%%
figure;
len0 = length(sub0);
len1 = length(sub1);
len2 = length(sub2);
ind0 = [1:1:len0]';
ind1 = [1:1:len1]' + len0;
ind2 = [1:1:len2]' + len0 + len1;
plot(x0, upper0, 'k-');
hold on;
plot(x1, lower1, 'k-')
axis([-0.1 1.1 -0.6 0.6])