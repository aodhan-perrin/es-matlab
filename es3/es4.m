% == Esercizio 4 == %

clc
clear
close all

n = 100;

B = 10 * eye(n) - diag(5 * ones(n-1, 1), -1) + diag(5 * ones(n-1, 1), 1);

A = B' * B;

R = chol(A);

b = sum(A, 2); % termine noto

% R'Rx = b --> R'y = b --> Rx = y

y = R'\b;
x = R\y;

% Error

xex = ones(n, 1);
err_relative = norm(x - xex) / norm(xex);