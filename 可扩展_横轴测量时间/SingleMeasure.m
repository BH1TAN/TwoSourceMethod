function m = SingleMeasure(n,sigmat,deadt)

%测量一个简化活度（真实活度考虑几何和探测效率）为n（贝可）的射源
%测量sigmat(秒)时间，返回所得到的计数（并非计数率）。
%已知探测器死时间为deadt（秒）,不可延展

t = 0;m = 0;recovert = 0;  %将测得值和总用时归零
while(t<sigmat)
   deltat = exprnd(1/n);%相邻核事件间隔时间服从mean为1/n的指数分布
   recovert = recovert+deltat;
   if(recovert>deadt)
      m = m+1;
      recovert = 0;
   end
   t = t+deltat;
end
end