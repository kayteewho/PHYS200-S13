x = linspace(1,.5,10);
y=x.*x;

y=1./x;

hold on
plot(x,x.*x)
plot(x,x.^2)
plot(x,1./x)

plot(x, x+y)
plot(x, 2*x/35)
hold off