function y = conv_frec(x,h)
    % conv_frec -> convolution operation (in frequency domain)
    % "x" is the input signal 
    % "h" is the impulse response (conv kernel)
    % "y" is the output signal 
    
    SIZE_X = numel(x);
    SIZE_H = numel(h);
    SIZE_Y = SIZE_X + SIZE_H - 1;
    
    new_x = fft(x);
    new_h = fft(h);
    
    
    y = SIZE_Y;
    
    
    
end
