function [lam, w, m] = invpot(A, p, z, tol, m_max)

flag = true;
m = 1;
lam = 0;

if isrow(z)
    z = z';
end

n = size(A, 1);
w = z / norm(z);

[L, U, P] = lu(A - p*eye(n));

while flag && m < m_max
    y = L\(P*w);
    z = U\y;

    lam_p = p+1 / (w'*z);
    w = z/norm(z);

    flag = abs(lam_p - lam) > tol * abs(lam_p);

    lam = lam_p;
    m = m + 1;
end