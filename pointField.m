function [E_x,E_y] = pointField(x,y,q)

k= 8.98755e9 %Nm^2/C^2

E_x= (k*q*x)./(x.^2 + y.^2).^(3/2)
E_y=(k*q*y)./(x.^2 + y.^2).^(3/2)

end

