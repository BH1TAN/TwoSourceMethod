function m = SingleMeasure(n,sigmat,deadt)

%����һ���򻯻�ȣ���ʵ��ȿ��Ǽ��κ�̽��Ч�ʣ�Ϊn�����ɣ�����Դ
%����sigmat(��)ʱ�䣬�������õ��ļ��������Ǽ����ʣ���
%��֪̽������ʱ��Ϊdeadt���룩,������չ

t = 0;m = 0;recovert = 0;  %�����ֵ������ʱ����
while(t<sigmat)
   deltat = exprnd(1/n);%���ں��¼����ʱ�����meanΪ1/n��ָ���ֲ�
   recovert = recovert+deltat;
   if(recovert>deadt)
      m = m+1;
      recovert = 0;
   end
   t = t+deltat;
end
end