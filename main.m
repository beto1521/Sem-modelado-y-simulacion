clear all;
clc;
% ODE que soluciona (numéricamente) el MRA
[t,x] = ode45(@MRAact1,[0 5],[0 0 0 1]);
figure(1)
plot(t,x);