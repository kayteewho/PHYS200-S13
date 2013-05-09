% 1)
dx = 0.075; dy = 0.075;
[x,y] = meshgrid(-6:dx:6,-6:dy:6);

G = exp((-x.^2) - (y.^2));

surf(x,y,G)

%It says OpenGL appears to be installed incorrectly.