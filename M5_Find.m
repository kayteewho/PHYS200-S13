[x,y]=meshgrid(-5:0.5:5,-5:0.5:5);
Vdipole=dipolePotential(x,y,1e-9,2);
surf(x,y,Vdipole)