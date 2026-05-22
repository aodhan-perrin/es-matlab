% == Esercizio 5 == %

clc
clear
close all

A = [3 -2 1 2; -1 0 2 1; 0 5 -6 -1; 1 1 -1 1; 1 -1 -1 -1; 8 -1 -5 2];
b = [1; -3; 7; 0; -6; 2];

r = rank(A);
[U, S, V] = svd(A);

s = diag(S);
sig = sum(s > 1e-14);

[m, n] = size(A);

% Splus has the transposed dimensions of S
Splus = zeros(n, m);
for k = 1:r
    Splus(k, k) = 1 /s(k);
end

Aplus = V*Splus*U';

x = Aplus*b

