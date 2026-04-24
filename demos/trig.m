A = [0; 0];

lenAC = 2;
lenBC = 1;
alpha = pi/6;

solution = roots([1, -2*lenAC*cos(alpha), (lenAC^2 - lenBC^2)]);
lenAB = solution(1, 1);

B = [lenAB; 0];
C = [lenAC*cos(alpha); lenAC*sin(alpha)];

vBA = (A - B);
vBC = (C - B);

vCA = (A - C);
vCB = (B - C);

beta = acosd((vBA'*vBC) / (norm(vBA) * norm(vBC)));
gamma = acosd((vCA'*vCB) / (norm(vCA) * norm(vCB)));

fprintf('Length of AB (c): %.2f\n', lenAB);
fprintf('Beta: %.0f\n', beta);
fprintf('Gamma: %.0f\n', gamma);
