function y = conv_osa(x,h)
    % conv_isa -> convolution operation (output side algorithm)
    % "x" is the input signal 
    % "h" is the impulse response
    % "y" is the output signal 
    
    SIZE_X = numel(x);
    SIZE_H = numel(h);
    SIZE_Y = SIZE_X + SIZE_H - 1;
    
    y = zeros(1, SIZE_Y);    % zero the output array
    
    for i = 1:SIZE_Y         % loops for each point of output signal
         for j = 1:SIZE_H
            if i-j+1 < 1    % because MATLAB is 1-indexed
                continue
            elseif i-j+1 > SIZE_X
                continue
            else
                y(i) = y(i) + h(j) * x(i-j+1);
         end
    end   
    
end

