function TSMR(n1,n2,mb,deadt,times,mintime,maxtime,step)
%�����ʱ��Ϊmaxtime�룬����Ϊstep�Ĳ��������������ʾ
i = mintime;
j=1;
while(i<=maxtime)
    data(j) = TSM(n1,n2,mb,i,deadt,times);
    i=i+step;
    j=j+1;
end
plot(data);

end