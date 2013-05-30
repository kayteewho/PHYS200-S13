function V = pointPotential(x,y,q)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

k= 8.98755e9 %Nm^2/C^2
V=k*q./sqrt(x.^2+y.^2)
end

