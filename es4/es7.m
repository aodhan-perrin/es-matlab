% == Esercizio 7 == %

addpath(genpath('lib'));

clc
clear
close all

A = [1 5 0 3 9; 7 8 4 0 1; 2 5 3 9 0; 1 -1 2 1 1; 7 3 -2 0 1];

Ainf = QReig(A, 100);