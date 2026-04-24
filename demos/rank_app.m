A = [2 0 2; 0 1 0; 0 0 0];

[U, S, V] = svd(A);

S = diag(S);
rank(A)
rank_A = nnz(S)