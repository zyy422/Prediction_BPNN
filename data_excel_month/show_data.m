clc;
clear;
close all;
data_2017=cell(12,1);
data_2018=cell(12,1);
for i=1:12
    file_name=strcat('2017_month_',num2str(i),'.xlsx');
    data_2017{i,1}=xlsread(file_name);
end
for i=1:12
    file_name=strcat('2018_month_',num2str(i),'.xlsx');
    data_2018{i,1}=xlsread(file_name);
end
for i=1:12
    tmp=data_2017{i,1};
    tmp=tmp(2:end,3:end);
    tmp(isnan(tmp))=0;
    data_2017{i,1}=tmp;
end
for i=1:12
    tmp=data_2018{i,1};
    tmp=tmp(2:end,3:end);
    tmp(isnan(tmp))=0;
    data_2018{i,1}=tmp;
end
for i=12
    data
end