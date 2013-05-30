x = -10:0.1:5;
sigma = 2;
y = myGauss(x,sigma);
plot(x,y)
xlabel('x-axis (m)')
ylabel('Gaussian')
title('myGaussian')

figure(5)
y=myGauss(x+5,sigma)+myGauss(x,sigma);
plot(x,y)