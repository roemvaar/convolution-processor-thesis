function y = conv_frec()
    % conv_frec -> convolution operation (in frequency domain)
    % "x" is the input signal 
    % "h" is the impulse response (conv kernel)
    % "y" is the output signal 
    
    x = [1, 2, 3, 4];
    h = [1, 2];
    N = numel(x) + numel(h) - 1;
    
    X = fft(x, N);
    H = fft(h, N);
    
    y = real(X .* N);
    
    
end
