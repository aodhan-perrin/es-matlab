% Esercizio 3
A = [1:6; 5:10; 9:14; 15:20];

% access via monoindexing
v = A([1 10 7 20]);



x = [-1 0 3 -5 7];
I = [true false false true true];

x(I);    % returns indexes of x corresponding to true indexes of I


R = rand(6)
rI = R > 0.7    % generates logical array for every element of R > 0.7
R(rI) = -1      % subs value of all true elements of rI in R to -1
                % "extremely efficient btw" - prof.