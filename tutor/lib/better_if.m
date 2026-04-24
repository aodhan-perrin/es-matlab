function [y] = better_if(x)
% if statments are mega cringe and gay %
    y = zeros(1, length(x));
    
    neg = x < 0;
    pos = x > 0;

    y(neg) = -2 .* x(neg);
    y(pos) = 2 .* x(pos);
end