addpath(genpath('lib'));
es_start;

x = 1;
tol = 1e-10;

approx = taylor_unswift(x, tol)
real = exp(x)

err = abs(approx - real)/real

