%part a
%Define variables for angular frequency and fundamental period
w = 3*10^8*pi;
T = (2*pi)/w;
%create vector t that goes from 0 to 5T at an evenly distrubuted number of
%n times. For us n was set to 100
t = linspace(0,5*T,100);
%answer
s = cos(w*t);
%part b

%when x is equal to 0m
t1 = sqrt(100)/(3*power(10,8));
t2 = (5+sqrt(100+(-5).^2))/(3*power(10,8));
rx1 = cos(w*(t-t1))+cos(w*(t-t2));

%when x is equal to 2.5m
t1 = sqrt(100+2.5^2)/(3*power(10,8));
t2 = (5+sqrt(100+(2.5-5)^2))/(3*power(10,8));
rx2 = cos(w*(t-t1))+cos(w*(t-t2));

%when x is equal to 7.5
t1 = sqrt(100+7.5^2)/(3*power(10,8));
t2 = (5+sqrt(100+(7.5-5)^2))/(3*power(10,8));
rx3 = cos(w*(t-t1))+cos(w*(t-t2));

%when x is equal to 10
t1 = sqrt(100+10^2)/(3*power(10,8));
t2 = (5+sqrt(100+(10-5)^2))/(3*power(10,8));
rx4 = cos(w*(t-t1))+cos(w*(t-t2));

% Part C
%Create vector x to hold the four distances of x we will examine the
%received signal at
x = [0,2.5,7.5,10];
for k = 1:length(x)
    %compute t1 and t2 using variable x(k)
    t1 = sqrt(100+(x(k))^2)/(3*power(10,8));
    t2 = (5+sqrt(100+(x(k)-5)^2))/(3*power(10,8));
    % Create a vector for the recieved signal at the computed values of t1
    % & t2
    r = cos(w*(t-t1))+cos(w*(t-t2));
    figure(1)
    sgtitle('Plot of signals s(t) and r(t) for a varying x distance of the target ');
    subplot(length(x),1,k)
    plot(t,s,'b-')
    hold on;
    plot(t,r,'r-')
    rlabel = strcat('r(t) for x = ', num2str(x(k)));
    legend('s(t)',rlabel)
    hold off;
    xlabel('time (sec)');
    
    ylabel('Amplitude');
    
    end