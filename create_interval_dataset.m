function [ train_input, train_target ] = create_interval_dataset( dataset, delay )
%CREATE_INTERVAL_DATASET Summary of this function goes here
%   Detailed explanation goes here
delay=delay/5-1 ;
length=size(dataset,1)-delay;
width=size(dataset,2);
train_input=zeros(length,4);
train_target=zeros(length,1);
    for i=1:length
        train_input(i,:)=dataset(i,2:end);
        train_target(i,:)=dataset(i+delay,1);
    end
end

