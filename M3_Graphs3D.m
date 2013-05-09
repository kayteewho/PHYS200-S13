% 1)
dx = 0.075; dy = 0.075;
[x,y] = meshgrid(-6:dx:6,-6:dy:6);

G = exp((-x.^2) - (y.^2));

surf(x,y,G)
 %Testing the function
 
G(26,26)
G(26,20)

%2)
dx = 0.075; dy = 0.075;
[x,y] = meshgrid(-2:dx:2, -2:dy:2);

k = 1; q1 = 0.000000001; q2 = -0.000000001; d = 1
V = (k*q1./(x.^2+(y-d).^2).^1/2) - (k*q2./(x.^2+(y+d).^2).^(1/2));

surf(x,y,V)

levels = [8 4 2 1 0.5 0.25 0 -0.25 -0.5 -1 -2 -4 -8];
[C,h] = contour(x,y,V,levels);
contour(x,y,V)

V(20,30)

%3)
A: dx = 0.3, dy = 0.3
B: dx = 0.5, dy = 0.5
C: dx = 0.05, dy = 0.05 
