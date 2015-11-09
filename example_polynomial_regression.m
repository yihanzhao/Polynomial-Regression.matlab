%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% 10 fold crossvalidation%%%%%
%%% fit polynomial regression%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%test polynomial order from 0 to 50
dmax=50;
errtrain=zeros(dmax,1)
errtest=zeros(dmax,1)
for i =1:dmax
    indices = crossvalind('Kfold',x,10);%perform 10 fold CV
    %generate indices from 1 to 10, and let test data with indices of 1
    test=(indices==1);train=~test;
    [err,model,errT] = polyreg(x(train),y(train),i,x(test),y(test));
    errtrain(i,:)=[err]
    errtest(i,:)=[errT] 
end 
hold off
order=1:1:dmax%create x axis with polinomial order from 0 to 50
figure;
plot(order,errtrain,'--go',order,errtest,':r*')
%let y axis to be train error and test error with different lines 
%give title, x axis name and y axis name 
title('Graph of train error and test error for different order of polynomial regression')
xlabel('highest order for parameter')
ylabel('error')
%denote different lines 
legend('trainerror','testerror')
￼
