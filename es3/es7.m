% == Esercizio 7 == %
clc
clear
clear all

x = linspace(0, pi, 15)';
y = x .* cos(x);

V = [x.^2, x, ones(15, 1)];

c = V\y;

c1 = c(1);
c2 = c(2);
c3 = c(3);

xplane = linspace(-1, 4, 100)';
p = c(1) * xplane.^2 + c(2)*xplane + c(3);

yplane = [xplane.^2, xplane, ones(size(xplane))] * c;

figure;
plot(x, y, 'or');
hold on
plot(xplane, p, 'b-', 'LineWidth', 2);
legend;