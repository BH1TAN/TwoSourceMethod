function sigma = TSM(n,mb,sigmat,deadt,times)

%��ϵͳ��ʱ�����times�β�����ÿ�β���sigmat�룬���ز��ֵ��������׼��
%����ΪԴ�ļ򻯻�ȣ�������ȣ����β���ʱ�䣬Ԥ����ʱ�䣬ʵ�����

i = 1;
mat = zeros(times,1);
while(i <= times)
    mat(i) = GroupMeasure(n,mb,sigmat,deadt);
    i = i+1;
    fprintf('%d\n',i);
end
sigma = std(mat);

end