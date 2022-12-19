clc,clear,close all
figure; 
axh = axes; 
h = impoly(axh);
position = getPosition(h);
x = position(:,1);
y = position(:,2);
plot(axh, x, y, 'kx')
xAxis = x;
yAxis = y;
subplot(211)
plot(xAxis,yAxis)
xEx = interp(xAxis,20);
yEx = interp(yAxis,20);
subplot(212)
plot(xEx,yEx)
temp = zeros(length(xEx),2);
temp(:,1) = xEx;
temp(:,2) = yEx;
FILE = 'Apna path dedena idhar please';
xlswrite(FILE,temp);