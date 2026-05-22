% == Esercizio 1 == %

addpath("lib")

clc
clear
close all

z = (1:3)';
tol = 1e-10;
i = 1000;

A1 = [1 2 0; 1 0 0; 0 1 0];
A2 = [0.1 3.8 0; 1 0 0; 0 1 0];
A3 = [0 -1 0; 1 0 0; 0 1 0];

[l1, m1] = pot(A1, z, tol, i);
[l2, m2] = pot(A2, z, tol, i);
[l3, m3] = pot(A3, z, tol, 10000000);

l1
m1

l2
m2

l3
m3