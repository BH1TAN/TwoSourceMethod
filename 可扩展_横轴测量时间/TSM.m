function sigma = TSM(n1,n2,mb,sigmat,deadt,times)

%��ϵͳ��ʱ�����times�β��������ز��ֵ�ı�׼��
%����ΪԴ1��Դ2�ļ򻯻�ȣ�������ȣ����β���ʱ�䣬Ԥ����ʱ�䣬ʵ�����

i = 1;
mat = zeros(times,1);
while(i <= times)
    mat(i) = GroupMeasure(n1,n2,mb,sigmat,deadt);
    i = i+1;
    fprintf('%d\n',i);
end
sigma = std(mat,1);

end