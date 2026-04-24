function M_hat = usvt(Y, p, epsilon)
    % Y: The observed matrix (with zeros for missing entries)
    % p: Probability of an entry being observed (0 < p <= 1)
    % epsilon: Tuning parameter (usually a small value like 0.01)
    
    [n, m] = size(Y);
    
    % Step 1: Scale the matrix if entries are partially observed
    % This compensates for the sparsity
    Y_scaled = Y / p;
    
    % Step 2: Compute SVD
    % We use 'econ' for efficiency on non-square matrices
    [U, S, V] = svd(Y_scaled, 'econ');
    singular_values = diag(S);
    
    % Step 3: Define the Threshold
    % Theory suggests (1+epsilon) * sqrt(max(n,m) * p)
    % Note: If p is 1, it's just sqrt(n)
    threshold = (1 + epsilon) * sqrt(max(n, m));
    
    % Step 4: Thresholding
    % Keep only values greater than the threshold
    keep_idx = singular_values >= threshold;
    S_thresholded = zeros(size(S));
    S_thresholded(keep_idx, keep_idx) = S(keep_idx, keep_idx);
    
    % Step 5: Reconstruction
    M_hat = U * S_thresholded * V';
    
    % Step 6: Clipping (Optional but recommended)
    % Assuming the original matrix values should be between 0 and 1
    M_hat(M_hat > 1) = 1;
    M_hat(M_hat < 0) = 0;
end