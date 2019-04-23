function y = conv_isa(x,h)
    % conv_isa -> convolution operation (input side algorithm)
    
    N1 = length(x);  
    N2 = length(h); 
    L = N1 + N2 - 1;
    
    y = zeros(1, L);    % zero the output array
    
    % loops through the input signal
    for i = 1:N1       
        for j = 1:N2
            y(i + j - 1) = y(i + j - 1) + x(i) * h(j);
        end
    end    
end

