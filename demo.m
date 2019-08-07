warning off

ds = {'YALE_165n_1024d_15c_zscore_uni'};
di = 1;
   
data_file = fullfile([ds{di}, '.mat']);
kernel_file = fullfile([ds{di},'_allkernel', '.mat']);
load(data_file);ds{di}
load(kernel_file);


lamada1 = 4;
lamada2 = 1;
lamada3 = 200;
lamada4 = 1;

tic
weight=2 ; % 1 for SPMKC-E; 2 for SPMKC
[result,Z,itt]=SPMKC(K,y,lamada1, lamada2,lamada3, lamada4, weight);
disp([lamada1, lamada2,lamada3, lamada4, itt]);
toc

disp(result);
