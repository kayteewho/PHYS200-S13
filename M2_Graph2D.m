%1)
t = -2:0.2:4
y = 2 + 4*t - 4.9*t.^2
plot(t,y)
% Labeling Axes
xlabel('t(s)')
ylabel('y(m)')
title('Freefall: Distance vs Time')

%2)
% Plot data as dumb points
xMeas = [-2 -1 0 1 2 3 4]
yMeas = [-29.6090 -4.7570 6.8710 -0.9770 -7.0830 -27.7210 -64.2010] 
errinyMeas = [3.0]
plot(xMeas, yMeas, 'r.')
%error bars
hold on
errorbar(xMeas, yMeas, errinyMeas, 'LineStyle', 'none')
hold off

%3)
