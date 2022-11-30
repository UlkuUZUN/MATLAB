function hsigan_PSNR(img)
[a b c]=size(img);

for n=1:1
    G=img(:,:,1);
    IM_slice=mat2gray(G);
x=uint8(255 *IM_slice);
    IM_slice_rgb = cat(3, x, x, x);
    figure,imshow(IM_slice_rgb);
%     IM_noise_rgb = imnoise(IM_slice_rgb,'gaussian',0.02);
%      IM_pair_noise_gt= [IM_noise_rgb IM_slice_rgb];
%      imwrite(IM_pair_noise_gt,sprintf('pair_gIM_slicerey_rgb_noise_gt%d.png',n));
% % % figure,imshow(rgbImage) 
% % % IM_noise = IM_slice + 20.*randn(size(IM_slice));
% %      IM_noise_rgb = imnoise(IM_slice_rgb,'gaussian',0.02);
% %     
% %      imwrite(IM_slice_rgb,sprintf('%d.png',n));
% %       h=histogram(IM_slice_rgb);
% %       saveas(h, "histo_slice_grey_rgb_"+n, 'jpg');
% %     
% %       imwrite(IM_noise_rgb,sprintf('noise_grey_rgb_%d.png',n));
% %       hnoisy=histogram(IM_noise_rgb);
% %       saveas(hnoisy, "histo_slice_grey_rgb_noise_"+n, 'jpg');
% % 
% %      IM_pair= [IM_slice_rgb IM_noise_rgb];
% %      imwrite(IM_pair,sprintf('pair_grey_rgb_%d.png',n));
% %      
% %      IM_pair_noiseless= [IM_slice_rgb IM_slice_rgb];
% %       imwrite(IM_pair_noiseless,sprintf('pair_grey_rgb_noiseless_%d.png',n));
      
% %           IM_pair_noise= [IM_noise_rgb IM_noise_rgb];
% %      imwrite(IM_pair_noise,sprintf('pair_grey_rgb_noise_%d.png',n));
  
%    targetFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_2000_3ch_gray\images\target',strcat('pair_grey_rgb_noise_',int2str(n),'.png'));
%    IM_target=imread(targetFileName);
%    GAN_target=im2double(IM_target);
%    
%    thisFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_2000_3ch_gray\images\output',strcat('pair_grey_rgb_noise_',int2str(n),'.png'));
%    IM_gelen=imread(thisFileName);
%    GAN_result=im2double(IM_gelen);
%    
%     noisyFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_2000_3ch_gray\images\input',strcat('pair_grey_rgb_noise_',int2str(n),'.png'));
%    IM_noisy=imread(noisyFileName);
%    GAN_noisy=im2double(IM_noisy);
% 
%  [peaksnr, snr] = psnr(GAN_noisy, GAN_result);
%    IM_noise_SNR1(n)=snr;
%    IM_noise_PSNR1(n)=peaksnr;
% 
% 
%   [peaksnr, snr] = psnr(GAN_target, GAN_result);
%    IM_noise_SNR(n)=snr;
%    IM_noise_PSNR(n)=peaksnr;
%   
% end
% 
% 
% plot(IM_noise_SNR1,'m'); hold on;
% plot(IM_noise_PSNR1,'g--o');hold on;
% plot(IM_noise_SNR,'r'); hold on;
% plot(IM_noise_PSNR,'b--o');hold on;
% 
% 
% 
% title("The signal-to-noise ratio (SNR) of different band of HSI");
% xlabel("bands of hsi");
% ylabel("SNR");
% legend('noisy slice SNR','noisy slice PSNR','GAN result SNR','GAN result PSNR');
end