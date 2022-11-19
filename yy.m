x=({'R^2','RMSE'});
y1=[0.8110,0.8922,0.9017,0.7188];
y2=[2.4554,6.8459,6.5213,8.8891];
xx = categorical({'R^2','RMSE'});    %定义分类数组
xx = reordercats(xx,{'R^2','RMSE'});   %调用 reordercats 函数来指定条形的顺序
y1=[0.8110,0.8922,0.9017,0.7188];
oo=[0,0,0,0];   %引入的零数组
yyaxis left      %激活左侧
ylabel('R^2');
ylim([0 1]);
hold on
b1=bar(xx,[y1;oo]);    %引入零数组
ax = gca;
ax.YColor='black';

yyaxis right      %激活右侧
ylabel('RMSE');
ylim([0 10]);
hold on
b2=bar(xx,[oo;y2]); %引入零数组
legend([b1(1,2) b2(1,1)],{'R^2','RMSE'}) ;   %只显示原始数据的图例
box on
ax = gca;
ax.YColor='black';
