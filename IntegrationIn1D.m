%Making the Function
clear all; close all;
dx= 0.1;                %dx step size
x=0:dx:20;              %array of x values [0:20]
y=x.^2;                 %y is a function of x

%Integrate
format long             %print more digits
I1 = trapz(x,y)         %trapz
I2 = dx*trapz(y)        %trapz again.

xSquared = @(x) x.^2;
tol = 1e-8;
I3 = quad(xSquared, 0,20,tol)       %using quadratic rule
I4 = quadl(xSquared, 0, 20, tol)    

Igauss= quad(@(x) myGauss(x,0.2), -2, 2)

% Electric Field of a rod with constant charge density:

%define constants
lambda = 1.0e-6;    %charge density is 1.0 microC/m
x0=3.0;             %position of point (x0,y0) in m
y0=3.0;
dx=0.1;
xi=1:dx:2;             %limits of the rod a=1 to b=2
% electric field at P from a chunk of charge at xi
[E_xi,E_yi] = pointField(x0-xi,y0,lambda*dx);
%integrate along charges on x-axis
Ex=trapz(E_xi)
Ey=trapz(E_yi)