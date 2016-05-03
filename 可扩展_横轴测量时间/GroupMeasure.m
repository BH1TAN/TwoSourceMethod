function t = GroupMeasure(n1,n2,mb,sigmat,deadt)

%���ü򻯻��Ϊn1,n2��Դ��ϵͳ��ʱ����в���
%���ز�õ���ʱ�䣬���ù�ʽDeadTime=(m1+m2-m12-mb)/(2*m1*m2)
%����ΪԴ1��Դ2�ļ򻯻�ȣ�������ȣ�����Դ������ʱ�䣬ϵͳ��ʵ��ʱ��

m1 = SingleMeasure(n1,sigmat,deadt)/sigmat;
m2 = SingleMeasure(n2,sigmat,deadt)/sigmat;
m12 = SingleMeasure(n1+n2,sigmat,deadt)/sigmat;
t = (m1+m2-m12-mb)/(2*m1*m2);
end