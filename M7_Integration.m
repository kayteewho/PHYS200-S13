%1.
theta=[0:0.3:pi]
Iwrong=trapz(theta,cos(theta))   %not correct

theta=[0:0.05:pi]
I=trapz(theta,cos(theta))  %decreasing thestep size creates a more precise
                           %result b/c trapz rule.
%2. 
