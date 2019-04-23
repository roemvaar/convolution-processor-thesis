function y = conv_osa(x,h)
    % conv_isa -> convolution operation (output side algorithm)
    
    N1 = length(x);
    N2 = length(h);
    L = N1 + N2 - 1;
    
    y = zeros(1, L);    % zero the output array
    
    % loops for each point of output signal
    for i = 1:L         
        for j = 1:N2
            if i-j+1 < 1    % because MATLAB is 1-indexed
                continue
            elseif i-j+1 > N1
                continue
            else
                y(i) = y(i) + h(j) * x(i-j+1);
            end
        end   
    end
end

