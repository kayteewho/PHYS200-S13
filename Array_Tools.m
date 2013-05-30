theta = 0:pi/100:2*pi;      %Setting a function
plot(theta,sin(theta));     %Plot the function
ii = find(sin(theta)>0 & sin(theta)<0.5);%find data between certain limits
hold on
plot(theta(ii),sin(theta(ii)),'r-');    %plot using dashes(-)
hold off

ii= find(sin(theta)>0 & sin(theta)<0.5);
theta(5)    %arrays for the given indices
theta(5:10)
theta(ii)

%part where you get rid of the line crossing through the middle
y=sin(theta(ii));
jj=find(y==max(y));
y(jj)=NaN;
plot(theta,sin(theta),theta(ii),y,'r-');

%Interpolation:

%interpolation using points along curvature
theta= 0:pi/10:2*pi;
ii=find(theta==0.5)
newTheta=0.5;
newSin = interp1(theta,sin(theta),newTheta); %interp.
plot(theta,sin(theta),newTheta,newSin,'r+');
thetaNew=0:pi/3:2*pi;
sinNew=interp1(theta,sin(theta),thetaNew); %interp.
plot(theta,sin(theta),thetaNew,sinNew,'r.')

%cubic interpolation using straight lines
figure(22)
plot(thetaNew,sinNew-sin(thetaNew))
ylabel('difference between interp1 and the exact value')
sinNew=interp1(theta,sin(theta),thetaNew,'cubic');
hold on
plot(thetaNew,sinNew-sin(thetaNew),'r')
hold off

%Find and Interpolation in 2D

[x,y] = meshgrid(-5:10/20:5,-5:10/20:5);
V1 = pointPotential(x+2,y-2,1e-9);
V2 = pointPotential(x-2,y+2,-1e-9);
figure(1)
surf(x,y,V1+V2);
ii=find(V1==-V2);
figure(2)
plot(x(ii),y(ii));

[xnew,ynew]=meshgrid(-5:10/100:5,-5:10/100:5);
Vnew=interp2(x,y,V1+V2,xnew,ynew,'linear');
figure(2)
surf(xnew,ynew,Vnew);
figure(3)
surf(xnew,ynew,Vnew-pointPotential(xnew+2,ynew-2,1e-9))
-pointPotential(xnew-2,ynew+2,-1e-9);


[x,y]=meshgrid(-5:0.5:5,-5:0.5:5);
Vdipole=dipolePotential(x,y,1e-9,2);
surf(x,y,Vdipole)

%jj=