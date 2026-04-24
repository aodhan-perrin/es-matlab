A = [3, -1, 0; 1, 2, -1; 0, 1, 2];
B = A';
C = A + B;

a = [1;0;1];
b = [1;1;0];
c = a + b;


x = A\a;
y = B\b;
z = C\c;

xy = acos((x'*y) / (norm(x) * norm(y)))
xz = acos((x'*z) / (norm(x) * norm(z)))
yz = acos((y'*z) / (norm(y) * norm(z)))