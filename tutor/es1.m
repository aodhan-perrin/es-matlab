addpath(genpath('lib'));
es_start;

N = 100;
x = linspace(-1, 1, N);
y = better_if(x);

figure
plot(x, y, 'r')
xlabel('x')
ylabel('y')
title('Exercise')
