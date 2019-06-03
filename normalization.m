function [ train_x,train_y,test_x,test_y,st1,st2]=normalization(train_x,train_y,test_x,test_y)
%NORMALIZATION Summary of this function goes here
%   Detailed explanation goes here
[train_x,st1]=mapminmax(train_x);
test_x=mapminmax.apply(test_x,st1);
[train_y,st2]=mapminmax(train_y);
test_y=mapminmax.apply(test_y,st2);

end

