clc
clear

n = 100;
A = zeros(n, n);

for i = 1:n
    for j = 1:n
        A(i, j) = max(i, j);
    end
end

[cL, cU] = elleu(A); % senza pivot

[L, U, P] = lu(A);   % con pivot

x_ex = ones(n, 1);
b = A*x_ex;

% Risoluzione del Sistema %y

% LUx = b => y = Ux => Ly = b

y = cL\b;
cx = cU\y;

c_err = norm(cx - x_ex) / norm(x_ex)