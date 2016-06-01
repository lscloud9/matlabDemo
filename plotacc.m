% config 
maxacc=10;%m/s^2
maxgyro=2000;%  degree/s
g=9.81;


% include acc012 gyro012 
% acc0
%figure(1)
[m,n]=size(acc0);
count=0;
acc0modified=zeros(m-1,n);
for i=2:m
    if  acc0(i)>maxacc
        count=count+1;
    elseif acc0(i)<-maxacc
            count=count+1;
    else
        acc0modified(i)=acc0(i);
    end
end
%plot(-acc2modified(1:m-1)*g)

% acc1
%figure(1)
[m,n]=size(acc1);
count=0;
acc1modified=zeros(m-1,n);
for i=2:m
    if  acc1(i)>maxacc
        count=count+1;
    elseif acc1(i)<-maxacc
            count=count+1;
    else
        acc1modified(i)=acc1(i);
    end
end
%plot(-acc2modified(1:m-1)*g)


% acc2
%figure(1)
[m,n]=size(acc2);
count=0;
acc2modified=zeros(m-1,n);
for i=2:m
    if  acc2(i)>maxacc
        count=count+1;
    elseif acc2(i)<-maxacc
            count=count+1;
    else
        acc2modified(i)=acc2(i);
    end
end
%plot(-acc2modified(1:m-1)*g)

count=0;
%figure(2)
[m,n]=size(gyro0);
gyro0modified=zeros(m-1,n);
for i=2:m
    if  gyro0(i)>maxgyro
        count=count+1;
    elseif gyro0(i)<-maxgyro
            count=count+1;
    else
        gyro0modified(i)=gyro0(i);
    end
end
%plot(gyro0modified(1:m-1))

count=0;
%figure(2)
[m,n]=size(gyro1);
gyro1modified=zeros(m-1,n);
for i=2:m
    if  gyro1(i)>maxgyro
        count=count+1;
    elseif gyro1(i)<-maxgyro
            count=count+1;
    else
        gyro1modified(i)=gyro0(i);
    end
end
%plot(gyro0modified(1:m-1))

count=0;
%figure(2)
[m,n]=size(gyro2);
gyro2modified=zeros(m-1,n);
for i=2:m
    if  gyro2(i)>maxgyro
        count=count+1;
    elseif gyro2(i)<-maxgyro
            count=count+1;
    else
        gyro2modified(i)=gyro0(i);
    end
end
%plot(gyro0modified(1:m-1))

