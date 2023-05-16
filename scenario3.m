clc
close all
clear all

t = [0:200];

%plant, hare, and lynx initial population
y0 = [0.2 0.6 1];
%in order to decrease population of lynx we have to increase their number
%but decrease their source of food 

%succesful predation
a1 = 5;
a2  = 0.5;
%increased the number of successful predation for a1, aka between hares and plants, so that the hares wouldn't die off. 

%unsuccesful predation
b1 = 1;
b2 = 5;
%
%death rate constants
d1 = 1;
d2 = 0.25;

%simulataneously increased the death rate of both hare and lynx
% initially they were at d1= 0.1 and d=0.01 
% the death rate of the prey has to be larger than that of the predator. The logic behind this is the predator dies off because it doesn't have prey to eat. 

[t,y] = ode45(@(t,y) plants_hare_lynx(t,y,a1,a2,b1,b2,d1,d2), t, y0);

% plotting the population over time
figure("Name",'Plant-Hare-Lynx')
plot(t,y)
title('Plant/Hare/Lynx Populations Over Time')
xlabel('Time [months]')
ylabel('Population')
legend('Plant','Hare','lynx','Location','North')
%the number of hares and plants stays constant while the population of lynx
%reaches zero after 30 days
% plotting the state space
figure("Name",'State space')
plot3(y(:,1),y(:,2), y(:,3))
title('State space')
xlabel('Plants')
ylabel('Hare')
zlabel('lynx')
% the state space here tends to a spiral which implies a steady space 

