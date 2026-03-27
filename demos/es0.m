% MATRICES
% (remove semicolon from line to print the resulting variable)

M = [1 3 4; -1 0 8];  

M(1,2);      % prints element m12
c = M(1,2);  % store value of m12 in c
M(1,2) = 7;  % changes element m12

M=magic(5);  % creates a 5x5

% extract sub-matrix from parent
sM=M([1 4], [1 3]);               % sub matrix with [m11 m13; m41 m13]
M([1 4],[1 3]) = [-1 -1; -1 -1];  % replaces indicated elements
sm1=M(3,:);                       % access whole row/column with wildcard


% indexes permit changing element position
N = [1 2; -1 -2];

flipLines = N([2 1],:);  % flips lines via index and wildcard
flip = N([2 1], [2 1]);  % flips columns via index


% indexes permit vector expansion
v = [1 2 3 4];

V = v([1 1 1 1], :);  % copies line 1 into 3 more lines of the same value


% MATLAB supports manipulating via iteration
x = 0:0.1:1;             % start:step:end
y = linspace(0, 1, 11);  % linspace(start, end, #elements)


% access even columns
M = magic(9);

evenM = M(:, 2:2:end);         % access only even columns via iteration
flipColumns = M(:, end:-1:1);  % flip columns via reverse reverse iter.


% OPERATIONS
M = [1 2 3; 4 5 6];

MT = M';          % transposition

Z = ones(4, 5);   % 4x5 matrix with all elements = 1
Z = zeros(3, 6);  % 3x6 null matrix
I = eye(4);       % 4x4 identity matrix
I = eye(4, 5);    % 4x5 identity matrix


% MATRIX CONCATENATION (multipication)
Z = zeros(4, 2);
U = ones(2);
I = eye(2);
N = [2; 2; 2; 2];

M = [Z [[U; I] N]];    % don't leave null space!
%   Z x ((U x I) x N)

% DIAGONALS
M = 7*eye(4);          % 4x4 with all elements on the diagonal = 7

D = diag([1 2 3], 2);  % puts the vec[1 2 3] on 2nd diagonal
                       % do not go out of matrix bounds!

M = 7*eye(4) + diag([3 3 3], 1) + diag([2 2 2], -1);

    % extracting diagonals

    M = magic(7);

    d0 = diag(M, 0);  % extract diagonal of M on index i=0
    
    % when the input of `diag()` when a number creates a matric
    % while if the input is a matrix, it yields a vector
    % for example:

    N = M - diag(diag(M, 0)) + 7*eye(7);