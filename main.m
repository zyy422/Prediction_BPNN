clc;
clear;
data_2017_2018=importdata("./solar data/212-Site_25-Hanwha-Solar.csv");
data_2019=importdata("./solar data/test(2019-now).csv");
data_train=data_2017_2018.data;
data_train(isnan(data_train))=0;
data_test=data_2019.data;
data_test(isnan(data_test))=0;
rmse_training=zeros(1,60);
rmse_test=zeros(1,60);
for DELAY=5:5:300
    i=DELAY/5;
    [train_x,train_y]=create_interval_dataset(data_train,DELAY);
    [test_x,test_y]=create_interval_dataset(data_test,DELAY);
    [norm_train_x,norm_train_y,norm_test_x,norm_test_y,st1,st2]=normalization(train_x',train_y',test_x',test_y');
    net=feedforwardnet(30);
    net=train(net,norm_train_x,norm_train_y);
    norm_train_val=sim(net,norm_train_x);
    train_val=mapminmax.reverse(norm_train_val,st2);
    norm_pred=sim(net,norm_test_x);
    pred=mapminmax.reverse(norm_pred,st2);
    pred(pred<0)=0;
    rmse_training(1,i)=rmse(train_val,train_y');
    rmse_test(1,i)=rmse(pred,test_y');
end




