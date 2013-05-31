for i = 1:5 %for loop
    disp(i)
end         %end loop over i

t = 0:0.1:20;      %times for the x-axis
for w=2*pi/20:.01:2*pi/10   %w is the parameter we change
    plot(t,cos(w*t),'Color',[0 0 w]) %[w 0 0]red [0 w 0]green [0 0 w]blue
    hold on
end
hold off
xlabel('time (seconds)');
ylabel('cos(\omegat)');

theta = -pi:0.1:pi;
total=0;
for i =2:5
    intensity = (cos(theta*2)).*(theta/i).^2;
    total = total + intensity
    plot(theta,intensity,':','Color',[i/5 0 0])
    hold on
end
plot(theta,total,'b-'); %all in blue
hold off

%Control Statements - "while"

number=55000;
power = 0;
while number > 2^power  %condition to quit looping
    power = power + 1;  %update power
end
power   %print result

%Control Statements - "if...else...end"

val(1)=1;
for i =2:100
    if (i/2 - round(i/2)) == 0   % i is even
        val(i) = val(i-1)+1;
    else
        val(i) = val(i-1)-i;
    end
end
plot(val)