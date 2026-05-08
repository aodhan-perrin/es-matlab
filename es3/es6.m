% == Esercizio 6 == %

clc
clear
close all

A = [ 1  2  3  4;
     -1  0  4  1;
      3  5  1  0;
      2 -1  0  1;
      1  1 -1  1;
      2 -1  0  3];

b = (1:6)';

s = svd(A);
r = rank(A);

[Q, R] = qr(A);
Rt = R(1:r, 1:r);

c = Q'*b;
c1 = c(1:r);
c2 = c(r+1:end);

x = Rt\c1;

res = norm(c2);
