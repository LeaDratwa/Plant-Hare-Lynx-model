clc
close all
clear all

t = [0:200];

%plant, hare, and lynx initial population
y0 = [0.6  0.3 0.9];

%succesful predation
a1 = 3;
a2  = 0.2;

%unsuccesful predation
b1 = 0.5;
b2 = 5;

%death rate constants
d1 = 0.1;
d2 = 0.02;

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