figure(1)
t= -5.:.05:5.
f = (t+1)/(t-1)
plot(t,f)

figure(2)
theta = linspace( 0.,2*pi,200.)
I =cos(theta).^2
plot(theta, I, 'r*')

% x=min:stepsize:max
    %stepsize<(max-min)
% x=linspace(min,max,#ofsteps)

figure(3)
sigma = 10
x = -5.:.05:5.
G = exp((x.^2)/sigma)
plot(x,G)

            
