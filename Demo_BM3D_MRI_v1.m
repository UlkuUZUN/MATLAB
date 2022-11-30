clc;
clear all;
close all;
clear classes;
%% Set the path
addpath('./BM3D')
addpath('./SamplingMask')
%% Load data
% [im_ori] = imread('Brain.jpg');
% [im_ori] = imread('Bust.jpg');
  [im_ori] = imread('gt.png');
%%
 load('Q_Random30.mat');
% load('Q_Radial30.mat');
% load('Q_Cartesian30.mat');
mask=Q1;
%%
im_ori=double(abs(im_ori));
[im_ori] =double(im_ori)/double(max(max(im_ori)));
%% Show the sampling pattern
figure,imshow(ifftshift(mask))
[row,column]=size(mask);
SamplingRate=sum(mask(:))/numel(mask);
%% BM3D-MRI
tic
[PSNR_BM3D_iter,im_rec_BM3D]=BM3D_MRI_function(im_ori,mask);
CPU_time_BM3D=toc;
%%
PSNR_h1=sum(sum(abs(im_ori).^2 ));
PSNR_h2=sum(sum(abs(im_rec_BM3D-im_ori).^2 ));
PSNR_BM3D=10*log10(PSNR_h1/PSNR_h2);
%break
%%
Idiff_BM3D=abs(im_rec_BM3D-im_ori);
%%
CPU_time_BM3D
%%
figure,plot(PSNR_BM3D_iter)
PSNR_BM3D
