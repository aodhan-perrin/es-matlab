% == Esercizio 2 == %

clc
clear
close all

z = [1 1 1]';
tol = 1e-10;
p = 0.5;
i = 1000;


A1 = [1 -2 0; 0 2 0; 1 1 3];
A2 = [0.5 -2 0; 0 2 0; 1 1 3];
A3 = [0 -2 0; 0 1 0; 1 1 3];

[l1, w1, m1] = potenze_inverse(A1, p, z, tol, i);
[l2, w2, m2] = potenze_inverse(A2, p, z, tol, i);
[l3, w3, m3] = potenze_inverse(A3, p, z, tol, i);

l1
w1
m1

l2
w2
m2

l3
w3
m3




