function y = conv_frec(x, h)
    % conv_frec -> convolution operation using fft (in frequency domain)

    N1 = length(x);
    N2 = length(h);
    L = N1 + N2 - 1;
    
    X = fft(x, L);
    H = fft(h, L);
    
    y = ifft(X.*H);  
    
end
