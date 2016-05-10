close all;
clear all;
clc;
data=xlsread('path of the data file');
x=data(:,1);lx=length(x); 
y=data(:,2);ly=length(y);
plot(x,y);
hold on;
maxy=max(y);
miny=min(y);
%# normalize to -1...1 logic
yNorm = ((y-miny)./(maxy-miny) - 0.5 ) *2;
plot(x,yNorm);
data=[x yNorm];
dlmwrite('path of output data',data, '\t') % path where you want to save the data
