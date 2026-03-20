A = [1 2 3 4; 5 6 7 8; 9 10 11 12]

% a)
size(A);

% returns the size of the matrix


% b)
A(1:2,4);        % returns column 4 of lines 1, 2
A(:,3);          % returns all elements of column 3
A(1:2,:);        % returns all lines except the last
A(:,[2 4]);      % returns columns 2, 4
A([2 3 3],:);    % changes line 2 into a copy of line 3


%c)
A(3, 2) = A(1, 1);

% changes a(3 2) into a copy of a(1 1)


% d)
A(1:2,4)=zeros(2,1);


% e)
A(2,:)=A(2,:)-A(2,1)/A(1,1)*A(1,:);