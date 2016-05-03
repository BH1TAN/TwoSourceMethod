function TSMR(n1,n2,mb,deadt,times,mintime,maxtime,step)
%进行最长时间为maxtime秒，步进为step的测量，并将结果显示
global data

i = mintime;
j = 1;
while(i<=maxtime)
    data(j) = TSM(n1,n2,mb,i,deadt,times);
    i = i+step;
    j = j+1;
    fprintf('********\nPRESENT:%d\nMAX:%d\nSTEP:%d\n********\n\n',i,maxtime,step);
    
end
plot(data);

end