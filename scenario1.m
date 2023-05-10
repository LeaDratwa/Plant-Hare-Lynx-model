clc
close all
clear all

t = [0:200];

%plant, hare, and lynx
y0 = [0.1  0.1  0.1];

%
a1 = 1;
a2  = 0.1;

%
b1 = 1;
b2 = 1;
%death rate constants
d1 = 0.1;
d2 = 0.01;

[t,y] = ode45(@(t,y) plant_hare_lynx(t,y,a1,a2,b1,b2,d1,d2), t, y0);

% plotting the population over time
figure("Name",'Plant-Hare-Lynx')
plot(t,y)
title('Plant/Hare/Lynx Populations Over Time')
xlabel('Time [months]')
ylabel('Population')
legend('Plant','Hare','lynx','Location','North')

% plotting the state space
figure("Name",'State space')
plot3(y(:,1),y(:,2), y(:,3))
title('State space')
xlabel('Plants')
ylabel('Hare')
zlabel('lynx')