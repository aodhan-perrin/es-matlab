% == GAUSSIAN ELIMINATION DEMO == %

% random n between 2 & 8
n = randi([2, 8], 1, 1);

% Defines an nth order system Ax = B with random elements between 1 & 10
A = randi([1, 10], n, n);
B = randi([1, 10], n, 1);
x = zeros(n, 1);    % preallocates space for the solutions

% Converts the system to upper triangular using elementary operations
for k = 1:n
    for j = k+1:n
        m = A(j, k) / A(k, k);
        A(j, k:n) = A(j, k:n) - m * A(k, k:n);
        B(j) = B(j) - m * B(k);
    end
end

% Calculates the x for every line
for k = n:-1:1
    x(k) = (1/A(k, k)) * (B(k) - (A(k, k+1:n)*x(k+1:n)));
end

disp("Solved system:")
disp(x)