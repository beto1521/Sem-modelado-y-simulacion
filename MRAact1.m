function dz = MRAact1(t,z)
% Masa Resorte Amortiguador
% Parámetros / Condiciones iniciales
ip = 0.0079;
Mc = 0.7031;
Lp = 0.3302; 
Mp = 0.23; 
Fc = 0; 
Beq = 4.3;
g = 9.81;
Bp = 0.0024;
dz = zeros(4,1);
% Dinamica del sistema
dz(1) = z(2);
dz(2) = ((Lp+Mp*ip^2)*Fc+Mp^2*Lp^2*g*cos( z(3) )*sin(z(3))-(ip+Mp*Lp^2)*Beq*z(2) -(ip*Mp*Lp-Mp^2*Lp^3)*z(4)^2*sin(z(3))-Mp*Lp*z(4)*cos(z(3))*Bp)/((Mc+Mp)*ip+Mc*Mp*Lp^2+Mp^2*Lp^2*sin(z(3))^2);
dz(3) = z(4);
dz(4) = ((Mc+Mp)*Mp*g*Lp*sin(z(3))-(Mc+Mp)*Bp*z(4) +Fc*Mp*Lp*cos( z(3) )-Mp^2*Lp^2* z(4)^2 *sin( z(3) )*cos( z(3) )-Beq*Mp*Lp* z(2) *cos( z(3) ))/((Mc+Mp)*ip+Mc*Mp*Lp^2+Mp^2*Lp^2*sin(z(3))^2);
