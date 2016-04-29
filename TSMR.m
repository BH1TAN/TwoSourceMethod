function TSMR(n1,n2,mb,deadt,times,mintime,maxtime,step)
%进行最长时间为maxtime秒，步进为step的测量，并将结果显示
i = mintime;
j=1;
while(i<=maxtime)
    data(j) = TSM(n1,n2,mb,i,deadt,times);
    i=i+step;
    j=j+1;
end
plot(data);

end