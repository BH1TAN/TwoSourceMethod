function t = GroupMeasure(n,mb,sigmat,deadt)

%利用两个简化活度为n的源对系统死时间进行测量
%返回测得的死时间，利用公式DeadTime=(m1+m2-m12-mb)/(2*m1*m2)
%参数为源1，源2的简化活度，背景活度，单个源测量的时间，系统真实死时间

m1 = SingleMeasure(n,sigmat,deadt)/sigmat;
m2 = SingleMeasure(n,sigmat,deadt)/sigmat;
m12 = SingleMeasure(2*n,sigmat,deadt)/sigmat;
t = (m1+m2-m12-mb)/(2*m1*m2);
end