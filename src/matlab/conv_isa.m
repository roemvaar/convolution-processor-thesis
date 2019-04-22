function y = conv_isa(x,h)
    % conv_isa -> convolution operation (input side algorithm)
    % "x" is the input signal 
    % "h" is the impulse response
    % "y" is the output signal 
    
    SIZE_X = numel(x);    % number of elements of x 
    SIZE_H = numel(h);    % number of elements of h
    
    y = zeros(1, SIZE_X + SIZE_H - 1);    % zero the output array
    
    for i = 1:SIZE_X      % loops through the input signal 
        for j = 1:SIZE_H
            y(i + j - 1) = y(i + j - 1) + x(i) * h(j);
        end
    end    
end

