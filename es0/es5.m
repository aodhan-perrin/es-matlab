% == Esercizio 5 == %

A = magic(3)

% a)
det(A)

% b)
v = A(1, :)'   % vector with value of line 1 
w = A(3, :)'   % vector with value of line 3

sProd = v'*w    % dot of v & w (vTrans*w to be efficient)
                