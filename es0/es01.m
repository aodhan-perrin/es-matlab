x = [1:-0.1:0];

% a)
x([1 4 3]);     

% prints indexes 1, 4, 3


% b)
x([1:2:7 10]) = zeros(1, 5);

% iterates through odd indexes and 10, assigning a 1x5 null matrix


% c)
x([1 2 5]) = [0.5*ones(1,2) -0.3];

% substitutes indexes 1, 2 with 0.5x[1; 1] and 5 with -0.3


% d)
y = x(end:-1:1);

% generates y as inverse of x via reverse iteration