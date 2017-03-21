% projectile initial condiitons
% initial velocity 200m/s

y_1i = 0;
y_2i = 200*cos(pi/6);
y_3i = 0;
y_4i = 200*sin(pi/6);

init_vec = [y_1i;y_2i;y_3i;y_4i];

% use ode45 solver to get the solution of the systems 

[t,y] = ode45('projectile_eqn',[0,20],init_vec);

% plot responses 
% plot of range vs altitude
subplot(2,1,1)
plot(y(:,1),y(:,3))
axis([-inf,inf,0,500])
grid on
title('x vs z, Cd=0.5') 
xlabel('Range(m)')
ylabel('Altitude(m)')

% plot altitude vs duration

subplot(2,1,2)
plot(t,y(:,3))
axis([-inf,inf,0,500])
grid on
title('z vs t,Cd=0.5')
xlabel('Time(s)')
ylabel('Altitude(m)')




