function TSMR(minn,maxn,step,mb,deadt,times,sigmat)
%进行最低计数率minn，步进为step的测量，并将结果显示
global data

i = minn;
j = 1;
while(i <= maxn)
    data(j) = TSM(i,mb,sigmat,deadt,times);
    fprintf('********\nPRESENT:%d\nMAX:%d\nSTEP:%d\n',i,maxn,step);
    fprintf('TIMES:%d\n********\n\n',times);
    i = i+step;
    j = j+1;
    
end
semilogy(minn:step:maxn,data);
xlabel('counting rate(/s)');
ylabel('sigma');

end