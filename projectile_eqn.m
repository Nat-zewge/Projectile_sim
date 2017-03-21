function [ dy ] = projectile_eqn( t,y )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%parameters

D = 0.003; %  where D = 0.5*rho*Ap*Cd for Cd=0.5, D=0.003, for Cd=0.1,D=0.0006 
m = 30;
g = 9.81;

dy = zeros(4,1);
% state variable equation of motion

dy(1) = y(2);

dy(2) = -D/m*sqrt(y(2)^2+y(4)^2)*y(2);

dy(3) = y(4);

dy(4) = -D/m*sqrt(y(2)^2 + y(4)^2)*y(3)-g;



end

