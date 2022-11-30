function [PSNR_BM3D,Iout1] = BM3D_MRI_function(im_orig,mask)
%% parameters
input.num=20;
input.inner_iter2=10;
input.inner_iter1=1;
input.Lambda=0; %0.0; % parameter for observation fidelity
constt=200; ratt=200; 
%%
input.sigma_bm3d=constt; %2*sigma; %25; % 25 %4
input.final_noise=constt/ratt; %sigma/2; %0.1
[PSNR_BM3D,Iout1] = BM3D_MRI_inner_function(im_orig,mask,input);
