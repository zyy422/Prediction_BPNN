clc;
clear;
close all;
% file_name=strcat('2017_month_',num2str(1),'.csv');
data_1=importdata('./2017_month_2.csv');
data=cell(12,1);
for i=1:12
    file_name=strcat('2017_month_',num2str(i),'.csv');
    data_1=importdata(file_name);
end