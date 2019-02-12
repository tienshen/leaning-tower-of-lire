% "I discussed this homework problem with Tim Gong. I certify that the assignment I am submitting represents my own work. Tien Li Shen"
% Tien-Li Shen, 02/19/2018, HW4, ID:30930512

%initialize inputs
block_length_1 = 1;
desired_overhang_1 = 1:0.1:4;

%this for-loop inputs incremental desired overhang and block length of 1
%into the function
for n=1:length(desired_overhang_1)
    [blocks_1(n), overhang_vector_1] = hw4_func_TS(desired_overhang_1(n), block_length_1);
end
%figure 1 plots the desired overhang vs. blocks required
figure
plot(desired_overhang_1, blocks_1,'m-.');
    title("Desired Overhang vs. Blocks Required");
    xlabel("desired overhang length");
    ylabel("number of blocks");
    %this plot shows an exponential growth relationship. As desired
    %overhang length increases, the number of blocks required increases
    %exponentially. This is because additional overhang decreases as each
    %additional block is added.
    
%figure 2 plots the number of blocks and the overhang it achieves
figure
plot(overhang_vector_1,'k-');
    title("Number of Blocks vs. Overhang Achieved");
    xlabel("number of blocks");
    ylabel("overhang length");
    %this plot shows that the overhang length increases very fast but seems to  converge as the
    %number of blocks is increased to a very high number. This makes sense
    %because the additional overhang obtained by putting on more blocks
    %decreases by a fraction with every new block stacked on top.
    %additional block overhang length eventually decreases to a very
    %negligible length.
    
%initialize inputs
desired_overhang_2 = 4;
block_length_2 = 1:0.05:2;

%this for-loop inputs incremental block length and desired overhang length
%of 4 into the function
for n=1:length(block_length_2)
    [blocks_2(n), overhang_vector_2] = hw4_func_TS(desired_overhang_2, block_length_2(n));
end

%figure 3 plots
figure
plot(block_length_2, blocks_2, 'r-.');
    title("Block Length vs. Number of Blocks Required");
    xlabel("block length");
    ylabel("number of blocks");
    %this plot shows that number of blocks required seems to decreases
    %expoentially as block length increases at the condition that desired
    %block lenght stays the same. This all makes sense because it gets
    %easier to achieve high total overhang as block length increases, which
    %means less number of blocks is required.
    
%first time testing
tic %desired overhang length is 8 & block length is 1
    [blocks_8, overhang_vector_8] =  hw4_func_TS(8, 1);
toc
    time_oh_8 = toc;
    blocks_oh_8 = blocks_8;

%second time testing
    [blocks_9, overhang_vector_9] =  hw4_func_TS(9, 1);
toc
    time_oh_9 = toc;
    blocks_oh_9 = blocks_9;
%Elapsed time is 0.382473 seconds. ( for length of 8)
%Elapsed time is 3.211187 seconds. ( for length of 9)