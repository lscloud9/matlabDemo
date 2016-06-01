[m,n]=size(acc2);
bufferSize=10;
acc2filterAve=[];
acc2filterAveNomaxmin=[];
offset = 64500;
sum=0;
max=0;
min=0;
for i=bufferSize+offset:200+offset
    sum =0;
    max=acc2(i);
    min=acc2(i);
    for j=0:bufferSize-1
        if acc2(i-j)>max
            max=acc2(i-j);
        end
        if acc2(i-j)<min
            min=acc2(i-j);
        end
        sum = sum + acc2(i-j);
    end
    acc2filterAve(i-bufferSize+1-offset) = sum/bufferSize;
    sum = sum -min -max;
    acc2filterAveNomaxmin(i-bufferSize+1-offset) = sum/(bufferSize-2);
    acc2Ori(i-bufferSize+1-offset)=acc2(i);
end
