close all;

fixedstep = 0.001;
[num ] = size(y.data);
fftx = abs(fft(y.data));
fftx(1)=fftx(1)/num(1);
fftx(2:num(1)) = fftx(2:num(1))/num(1)*2;
fs=1/fixedstep;

figure
n=0:1:num(1)-1;
plot(n/num(1)*fs,fftx(1:num(1)));

figure
n=0:1:floor(num(1)/2);
plot(n/num(1)*fs,fftx(1:floor(num(1)/2)+1));

