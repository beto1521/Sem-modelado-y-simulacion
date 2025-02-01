clear all;
clc;
% ODE que soluciona (numéricamente) el MRA
[t,x] = ode45(@MRAact1,[0 5],[0 0 pi/180 0]);
figure(1)
plot(t,x);
