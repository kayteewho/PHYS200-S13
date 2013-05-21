% 1)
dx = 0.075; dy = 0.075;
[x,y] = meshgrid(-6:dx:6,-6:dy:6);

G = exp((-x.^2) - (y.^2));

figure(1)
surf(x,y,G)
 %Testing the function
 
G(26,26)
G(26,20)

%2)
dx = 0.075; dy = 0.075;
[x,y] = meshgrid(-2:dx:2, -2:dy:2);

k = 8.99e9; q1 = 1e-9; q2 = -1e-9; d = 1
V = (k*q1./(x.^2+(y-d).^2).^(1/2)) + (k*q2./(x.^2+(y+d).^2).^(1/2));

figure(2)
surf(x,y,V)

levels = [8 4 2 1 0.5 0.25 0 -0.25 -0.5 -1 -2 -4 -8];
figure(3)
[C,h] = contour(x,y,V,levels);


V(20,30)


%3)
figure(4)
dxA = 0.3; dyA = 0.3
[x,y] = meshgrid(-2:dxA:2, -2:dyA:2);
k = 8.99e9; q1 = 1e-9; q2 = -1e-9; d = 1
V = (k*q1./(x.^2+(y-d).^2).^(1/2)) + (k*q2./(x.^2+(y+d).^2).^(1/2));
V(
dxB = 0.5; dyB = 0.5
[x,y] = meshgrid(-2:dxB:2, -2:dyB:2);

k = 8.99e9; q1 = 1e-9; q2 = -1e-9; d = 1
V = (k*q1./(x.^2+(y-d).^2).^(1/2)) + (k*q2./(x.^2+(y+d).^2).^(1/2));

dxC = 0.05; dyC = 0.05 
[x,y] = meshgrid(-2:dxC:2, -2:dyC:2);

k = 8.99e9; q1 = 1e-9; q2 = -1e-9; d = 1
V = (k*q1./(x.^2+(y-d).^2).^(1/2)) + (k*q2./(x.^2+(y+d).^2).^(1/2));
