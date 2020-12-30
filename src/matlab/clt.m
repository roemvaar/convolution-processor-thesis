% Teorema del Límite Central
% DSP book - capítulo 7
clear;
clc;

x = [0 0 0 3.9 2.3 2.4, 1.8, 0, 4.45, 2.1, 3.3 0 0 0];

subplot(3,1,1);
stem(x);
title('Example pulse');
xlabel('Sample number');
ylabel('Amplitude');

subplot(3,1,2);
c1 = conv(x, x);
stem(c1);
title('The pulse is convolved with itself once');
xlabel('Sample number');
ylabel('Amplitude');

subplot(3,1,3);
c2 = conv(c1,x);
c3 = conv(c2,x);
c4 = conv(c3,x);
c5 = conv(c4,x);
stem(c5);
title('The pulse is convolved with itself five times');
xlabel('Sample number');
ylabel('Amplitude');

