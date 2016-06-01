length=0.238;%meter
width = 0.238;%meter
sampleNum = 6;
% m1 = [0.2094 0.1963 0.2141 0.2007];%kg
% m2 = [0.1420 0.1519 0.1360 0.1576];%kg
% m3 = [0.2190 0.2061 0.2263 0.2019];%kg
% m4 = [0.1375 0.1535 0.1318 0.1478];%kg


m1 = [0.3168 0.3321 0.3358 0.3363 0.3294 0.3312];
m2 = [0.0094 0 0 0 0 0];
m3 = [0.3339 0.3496 0.3548 0.3298 0.3231 0.3249];
m4 = [0 0.0129 0.0402 0.0648 0.0784 0.1258];

msum=m1+m2+m3+m4;
% x coordinate axis
y = (m4*width/2 + m3*width/2 -m1*width/2 - m2*width/2)./msum;
% y coordinate axis
x = (m4*length/2 + m1*length/2 - m2*length/2 - m3*length)./msum;

xave=sum(x)/sampleNum;
yave=sum(y)/sampleNum;


