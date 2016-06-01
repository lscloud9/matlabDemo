clear
clc
openfileName = 'D:\Project\data\recoder00017.txt_1.txt';
openfileNum = 5;% may not greater than 99
if openfileNum >= 100
    clear openfileName;
    clear openfileNum;
    return;
end
for i=1:openfileNum
    [m,n]=size(openfileName);
    if i<10
        tempName=openfileName;
        tempName(m,n-4)=num2str(i);% modifly name
    else
         tempName=zeros(m,n+1);
         tempName=openfileName;
         tempName(m,n-4:n-3)=num2str(i);% modifly name
         tempName(m,n-2:n+1)='.txt';% modifly name
    end
    openData = importdata(tempName);
    [m,n]=size(openData.textdata);
    for j=1:n
         Name=['',char(openData.textdata(j))];
        eval([Name,'=openData.data(:,1);'])
    end
end

clear i;
clear j;
clear Name;
clear m;
clear n;
clear openData;
clear openfileName;
clear openfileNum;
clear tempName;
    