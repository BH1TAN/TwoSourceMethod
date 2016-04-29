function sigma = TSM(n1,n2,mb,sigmat,deadt,times)

%对系统死时间进行times次测量，返回测得值的标准差
%参数为源1和源2的简化活度，背景活度，单次测量时间，预设死时间，实验次数

i = 1;
mat = zeros(times,1);
while(i <= times)
    mat(i) = GroupMeasure(n1,n2,mb,sigmat,deadt);
    i = i+1;
    fprintf('%d\n',i);
end
sigma = std(mat,1);

end