clc
close all
clear all

tspan = [0, 20];
y0 = [3, 5, 100];
[t, y] = ode45('model', tspan, y0);

plot(t, y);
title('Solution of predator-prey model');
legend('N1-value', 'N2-value', 'Human');
