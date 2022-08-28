t=0:0.1:10; % forming a time access from 0 to 10 with 0.1 time steps
x=exp(-t).*cos((pi/2).*t);

plot(t,x);
title('Real part of signal, x(t) = exp(-(1 + (j*π)/2)t)')
xlabel('t')
ylabel('Re[x(t)]')