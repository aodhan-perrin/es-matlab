% == better Es4 == %

clc
clear
close all

A = [3 -2 1 2; -1 0 2 1; 0 5 -6 -1; 1 1 -1 1; 1 -1 -1 -1; 8 -1 -5 2];
b = [1; -3; 7; 0; -6; 2];

% pinv nuke
Aplus = pinv(A);
x = Aplus*b;
