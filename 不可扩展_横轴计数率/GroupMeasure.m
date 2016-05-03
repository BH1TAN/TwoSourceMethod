function t = GroupMeasure(n,mb,sigmat,deadt)

%���������򻯻��Ϊn��Դ��ϵͳ��ʱ����в���
%���ز�õ���ʱ�䣬���ù�ʽDeadTime=(m1+m2-m12-mb)/(2*m1*m2)
%����ΪԴ1��Դ2�ļ򻯻�ȣ�������ȣ�����Դ������ʱ�䣬ϵͳ��ʵ��ʱ��

m1 = SingleMeasure(n,sigmat,deadt)/sigmat;
m2 = SingleMeasure(n,sigmat,deadt)/sigmat;
m12 = SingleMeasure(2*n,sigmat,deadt)/sigmat;
t = (m1+m2-m12-mb)/(2*m1*m2);
end