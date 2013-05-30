%Writing a New Function
function y=myGauss(x,sigma)
        %myGauss(x,sigma) returns 
y=exp(-x.^2/sigma^2);