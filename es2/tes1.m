clc
clear

x = pi/4;
k = 1:50;
h = 2 .^ (-k);
r = (sin(x+h) - sin(x)) ./ h;

err = abs(r - cos(x));

%plot(log10(h), log10(err));

figure(1)
title("Con cancellazione")
loglog(h, err)
%semilogx
%semilogy

r2 = (2*sin(0.5*h) .* cos(0.5*h + x)) ./ h;

err2 = abs (r2 - cos(x));

figure(2)
loglog(h, err2)
