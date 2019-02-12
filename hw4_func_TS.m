% "I discussed this homework problem with Tim Gong. I certify that the
% assignment I am submitting represents my own work. Tien Li Shen"
% Tien-Li Shen, 02/19/2018, HW4, ID:30930512
% This function helps you stack blocks and create an overhang. input
% disired overhang and block length to get number of blocks needed and the
% overhang from each block added.

%initialize function
function [blocks, overhang_vector] =  hw4_func_TS(desired_overhang, block_length)

%initialize outputs
blocks = 1; %sets number of blocks to 1
overhang_vector = 0; %initialize overhang outputs
total_overhang = 0; %this variable keeps the current overhang

%while loop
while total_overhang < desired_overhang %the loop repeats when the current overhang does not reach the desired overhang
    total_overhang = overhang_vector(1,end) + 1/(2*(blocks))*block_length; %calculate the total overhang
    overhang_vector(blocks+1) = total_overhang; % the next row is assigned in the overhang vector
    blocks = blocks+1; % block number increases by 1
end
end