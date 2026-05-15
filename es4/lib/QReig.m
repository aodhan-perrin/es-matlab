function [Ainf] = QReig(A, m_max)

for k = 1:m_max
    [Q, R] = qr(A);
    Ainf = R*Q;
end