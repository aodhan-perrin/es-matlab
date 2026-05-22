% == Esercizio 3 == %
addpath("lib");

clc
clear
close all

H = hilb(10);
[Hinf, m] = myQReig(H, 1e-8, 1000);

lam = diag(Hinf)
m

B1 = [0 0 2; 1 0 1; 0 0 1];
[B1inf, m1] = myQReig(B1, 1e-8, 1000);

lamB1 = diag(B1inf)
m1

B2 = [0 1 0 1; 2 0 4 -2; -1 0 -1 0; -1 2 1 0];
[B2inf, m2] = myQReig(B2, 1e-8, 1000);
lamB2 = diag(B2inf)
m2