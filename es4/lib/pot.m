function [newEv, m] = potenze(A, z, tol, m_max)

flag = true;
m = 1;

if isrow(z)
    z = z';
end

w = z / norm(z);
oldEv = 0;

while flag && m < m_max
    z = A * w;
    newEv = w' * z;
    w = z / norm(z);
    flag = abs(newEv - oldEv) / abs(newEv) > tol;

    oldEv = newEv;

    m = m + 1;
end