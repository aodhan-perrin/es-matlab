function [U] = pelleu(A)
    n = size(A, 1);
    P = eye(n); % Initialize Permutation matrix
    L = eye(n); % Initialize L with 1s on diagonal
    
    for k = 1:n-1
        % --- 1. Partial Pivoting ---
        % Find the row index 'p' with the max absolute value in column k
        [~, p] = max(abs(A(k:n, k)));
        p = p + k - 1; % Adjust index to be relative to the whole matrix
        
        % Swap rows in A (which will become U)
        A([k, p], :) = A([p, k], :);
        % Swap rows in P to keep track of the changes
        P([k, p], :) = P([p, k], :);
        % Swap rows in L (only the parts we've already computed)
        if k > 1
            L([k, p], 1:k-1) = L([p, k], 1:k-1);
        end
        
        % --- 2. Standard Factorization (Vectorized) ---
        multipliers = A(k+1:n, k) / A(k, k);
        L(k+1:n, k) = multipliers;
        
        % Update the submatrix
        A(k+1:n, k+1:n) = A(k+1:n, k+1:n) - multipliers * A(k, k+1:n);
    end
    
    U = triu(A);
end