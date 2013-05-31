for i = 1:5 %for loop
    disp(i)
end         %end loop over i

t = 0:0.1:20;      %times for the x-axis
for w=2*pi/20:.01:2*pi/10   %w is the parameter we change
    plot(t,cos(w*t),'Color',[0 w 0])
    hold on
end
hold off
xlabel('time (seconds)');
ylabel('cos(\omegat)');
    