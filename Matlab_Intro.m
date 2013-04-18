% create an array
x = 0:.02: 3; %setting the boundaries
size(x) % shows how many values there are
x(1:7) %gives the first columm
x(1) % gives the value of 1
x(7) % gives the value of 7
x(end) % gives the value of the last
x(:) % print all values of the array into the screen


plot(pi*x,sin(pi*x)) 
xlabel('\pi *x')
ylabel('sin(\pi *x)')
title('Test Plot')