x=({'R^2','RMSE'});
y1=[0.8110,0.8922,0.9017,0.7188];
y2=[2.4554,6.8459,6.5213,8.8891];
xx = categorical({'R^2','RMSE'});    %�����������
xx = reordercats(xx,{'R^2','RMSE'});   %���� reordercats ������ָ�����ε�˳��
y1=[0.8110,0.8922,0.9017,0.7188];
oo=[0,0,0,0];   %�����������
yyaxis left      %�������
ylabel('R^2');
ylim([0 1]);
hold on
b1=bar(xx,[y1;oo]);    %����������
ax = gca;
ax.YColor='black';

yyaxis right      %�����Ҳ�
ylabel('RMSE');
ylim([0 10]);
hold on
b2=bar(xx,[oo;y2]); %����������
legend([b1(1,2) b2(1,1)],{'R^2','RMSE'}) ;   %ֻ��ʾԭʼ���ݵ�ͼ��
box on
ax = gca;
ax.YColor='black';
