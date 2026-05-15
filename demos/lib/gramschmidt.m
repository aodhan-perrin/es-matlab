function [U, R] = gramschmidt(V)

[k, n] = size(V);

U = zeros(k, n);
R = zeros(k, n);

R(1, 1) = norm(V(:, 1));
U(:, 1) = V(:, 1) / R (1, 1);

for i = 2:n
    U(:, i) = V(:, 1);

    for j = 1:i-1
        R(j, i) = U(:, i)' * U(:, j);
        U(:, i) = U(:, i) - R(j, i)*U(:, j);
    end

    R(i, i) = norm(U(:, i));
    U(:, i) = U(:, i) / R(i, i);
end
