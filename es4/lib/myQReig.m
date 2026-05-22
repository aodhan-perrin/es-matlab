function [A, m] = myQReig(A, tol, m_max);

m = 0;
flag = true;

while flag && m < m_max
    [Q, R] = qr(A);
    A = R*Q;

    m = m+1;
    
    % stop condition does not work for complex conjoined matricies.
    flag = norm(tril(A, -1), inf) > tol;
end