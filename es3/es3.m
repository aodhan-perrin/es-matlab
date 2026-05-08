% == Esercizio 3 == %

clc
clear
close all

n = 100;
A = rand(n);

b = sum(A, 2);


% stinky poo loop %


tic;

for k = 1:30
  x = A\b;
  b = x;
end

tBS = toc % in tBS e' il tempo del loop


% based truecell loop %
tic;

[L, U, P] = lu(A);

for k = 1:30
%   x = A\b --> Ly = P*b --> Ux\y
    
    y = L\(P*b);
    x = U\y;
    b = x;
end

tLU = toc

eff = tBS / tLU