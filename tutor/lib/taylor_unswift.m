function [y] = taylor_unswift(x, tol)
    y = ones(length(x));
    
    i = 1;
    buf = x .^ i ./ factorial(i);
    
    while buf > tol
        y = y + buf;
        i = i + 1;

        buf = x .^ i ./ factorial(i);
    end
end