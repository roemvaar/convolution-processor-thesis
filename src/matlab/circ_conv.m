function y = circ_conv()
    clc;
    close all;
    
    x = input('Enter the input sequence x(n)=');
    h = input('Enter the impulse response sequence h(n)=');
    
    N1 = length(x);
    N2 = length(h);
    L = N1 + N2 - 1;
    n = 0:1:L-1;
    
    zpx = [x zeros(1, L-N1)];
    disp('Input sequence after zero padding:: x(n):');
    disp(zpx);
    zph = [h zeros(1, L-N2)];
    disp('Impulse response after zero padding:: h(n):');
    disp(zph)
    
    X = fft(zpx);
    H = fft(zph);
    
    y = ifft(X .* H);
    disp('Response of discrete LTI System:: y(n):');
    disp(y);
    
    disp('Press "ENTER" for zero padded x(n)');
    pause
    subplot(2,2,1);
    stem(n, zpx);
    title('Input sequence after zero padding');
    xlabel('Discrete Time');
    ylabel('Amplitude');
    
    disp('Press "ENTER" for zero padded h(n)');
    pause
    n = 0:1:L-1;
    subplot(2,2,2);
    stem(n, zph);
    title('Impulse response after zero padding');
    xlabel('Discrete Time');
    ylabel('Amplitude');
    
    disp('Press "Enter" for Response of the system');
    pause
    n = 0:1:L-1;
    subplot(2, 2, [3, 4]);
    stem(n, y);
    title('Response of discrete LTI system');
    xlabel('Discrete Time');
    ylabel('Amplitude');
    
end
