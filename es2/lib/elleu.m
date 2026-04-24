function [L, U] = elleu(A)
    n = size(A, 1);

    for k = 1:n-1
        for j = k+1:n
            A(j, k) = A(j, k) / A(k, k);
            A(j, k+1:n) = A(j, k+1:n) - A(j, k) * A(k, k+1:n);
        end
    end

%{
    for k = 1:n-1
        % 1. Compute all multipliers for the column at once
        A(k+1:n, k) = A(k+1:n, k) / A(k, k);
        
        % 2. Update the remaining (n-k) x (n-k) submatrix 
        % This replaces the entire 'j' loop using an outer product
        A(k+1:n, k+1:n) = A(k+1:n, k+1:n) - A(k+1:n, k) * A(k, k+1:n);
    end
%}

    U = triu(A);
    L = tril(A, -1) + eye(n);
end

