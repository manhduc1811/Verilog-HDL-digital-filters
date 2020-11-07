clc;clear; close all;

n = -5:50;
x = [zeros(1,5), rand(1,41)-1/2, zeros(1,10)];
y4 = filter(ones(1,4)/4,1,x);
%y7 = filter(ones(1,7)/7,1,x);
y20 = filter(ones(1,20)/20,1,x);

subplot(3,1,1);
%stem(n,x,'filled');
plot(n,x);
title("Input signal."); 
subplot(3,1,2);
%stem(n,y3,'filled');
plot(n,y4);
title("After filter signal 1.");
subplot(3,1,3);
%stem(n,y7,'filled');
plot(n,y20);
title("After filter signal 2.");