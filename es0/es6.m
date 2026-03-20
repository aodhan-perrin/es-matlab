% == Esercizio 6 == %

% Functions and Graphs %
x = linspace(-pi, pi, 4);  % generates points on x as a vector
y = sin(x);                % generates points on y

plot(x, y);

% Define composite function
compF = @(x) sin(x).*cos(x).*x.^3;
x = linspace(-1, 1, 1000);
y = compF(x)

plot(x, y, 'r', 'linewidth', 2);