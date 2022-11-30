function HSI_RGB_PSNR(img)
[a b c]=size(img);
for n=1:c
    G=img(:,:,n);
%     figure,imshow(G) 

%     IM_slice=gray2rgb(G);
%     
%     % IM_noise = IM_slice + 20.*randn(size(IM_slice));
%     IM_noise = imnoise(IM_slice,'gaussian',0.02);
%     
%      imwrite(IM_slice,sprintf('%d.png',n));
%       h=histogram(IM_slice);
%       saveas(h, "histo_slice_rgb_"+n, 'jpg');
%     
%       imwrite(IM_noise,sprintf('noise_grey_%d.png',n));
%       hnoisy=histogram(IM_noise);
%       saveas(hnoisy, "histo_slice_rgb_noise_"+n, 'jpg');
% 
%      IM_pair= [IM_slice IM_noise];
%      imwrite(IM_pair,sprintf('pair_rgb_%d.png',n));
%      
%     IM_pair_rgb= [IM_slice IM_slice];
%       imwrite(IM_pair_rgb,sprintf('pair_rgb_noiseless_%d.png',n));
  
%    targetFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_grey\images\target',strcat('pair_grey_',int2str(n),'.png'));
%    IM_target=imread(targetFileName);
%    GAN_target=im2double(IM_target);
%    
%    thisFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_grey\images\output',strcat('pair_grey_',int2str(n),'.png'));
%    IM_gelen=imread(thisFileName);
%    GAN_result=im2double(IM_gelen);
%    
%     noisyFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_grey\images\input',strcat('pair_grey_',int2str(n),'.png'));
%    IM_noisy=imread(noisyFileName);
%    GAN_noisy=im2double(IM_noisy);

  % [peaksnr, snr] = psnr(IM_noise, IM_slice);
   % IM_noise_SNR(n)=snr;
   % IM_noise_PSNR(n)=peaksnr;
    
%     [peaksnrGAN, snrGAN] = psnr(IM_noise, IM_slice);
%      IM_gan_SNR(n)=snrGAN;
%      IM_gan_PSNR(n)=peaksnrGAN;

 
end
% plot(IM_noise_SNR,'r'); hold on;
% plot(IM_noise_PSNR,'b--o');hold on;
% 
% % plot(IM_gan_SNR,'g--*');hold on;
% % plot(IM_gan_PSNR,'k--+');
% title("The signal-to-noise ratio (SNR) of different band of HSI");
% xlabel("bands of hsi");
% ylabel("SNR");
% legend('noisy slice SNR','noisy slice PSNR','GAN result SNR','GAN result PSNR');
end