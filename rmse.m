function [ rmse ] = rmse(matrix_1,matrix_2 )
%MSE Summary of this function goes here
%   Detailed explanation goes here
%% mse
len=size(matrix_1,1)*size(matrix_1,2);
mse=0;
for i=1:size(matrix_1,1)
    for j=1:size(matrix_1,2)
        diff=matrix_1(i,j)-matrix_2(i,j);
        sqrtDiff=diff^2;
        mse=mse+sqrtDiff;
    end
end
mse=mse/len;
%% rmse
rmse=mse^0.5;
