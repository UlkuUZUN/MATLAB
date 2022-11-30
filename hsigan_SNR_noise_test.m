function hsigan_SNR_noise_test(img)
[a b c]=size(img);
for n=1:c
    G=img(:,:,n);
    IM_slice=mat2gray(G);
% IM_noise = IM_slice + 20.*randn(size(IM_slice));
    IM_noise = imnoise(IM_slice,'gaussian',0.01);
    
%      imwrite(IM_slice,sprintf('%d.png',n));
%       h=histogram(IM_slice);
%       saveas(h, "histo_slice_grey_"+n, 'jpg');
%     
%       imwrite(IM_noise,sprintf('noise_grey_%d.png',n));
%       hnoisy=histogram(IM_noise);
%       saveas(hnoisy, "histo_slice_grey_noise_"+n, 'jpg');
% 
%      IM_pair= [IM_slice IM_noise];
%      imwrite(IM_pair,sprintf('pair_grey_%d.png',n));
  
   targetFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_grey\images\target',strcat('pair_grey_',int2str(n),'.png'));
   IM_target=imread(targetFileName);
   GAN_target=im2double(IM_target);
   
   thisFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_grey\images\output',strcat('pair_grey_',int2str(n),'.png'));
   IM_gelen=imread(thisFileName);
   GAN_result=im2double(IM_gelen);
   
    noisyFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_gaussian_grey\images\input',strcat('pair_grey_',int2str(n),'.png'));
   IM_noisy=imread(noisyFileName);
   GAN_noisy=im2double(IM_noisy);

   
   IM_slice_SNR(n)=10*log(mean(IM_slice(:))/std(IM_slice(:)));
   IM_noise_SNR(n)=10*log(mean(IM_noise(:))/std(IM_noise(:)));
    IM_noise_SNR1(n)=10*log(mean(GAN_noisy1(:))/std(GAN_noisy1(:)));
   IM_GAN_target_SNR(n)=10*log(mean(GAN_target(:))/std(GAN_target(:)));
   IM_GAN_result_SNR(n)=10*log(mean(GAN_result(:))/std(GAN_result(:)));
   IM_GAN_noisy_SNR(n)=10*log(mean(GAN_noisy(:))/std(GAN_noisy(:)));
 
end
plot(IM_slice_SNR,'r'); hold on;
plot(IM_noise_SNR,'b--o');hold on;

plot(IM_GAN_target_SNR,'g--*');hold on;
plot(IM_GAN_result_SNR,'k--+');hold on;
plot(IM_GAN_noisy_SNR,'c--x');
title("The signal-to-noise ratio (SNR) of different band of HSI");
xlabel("bands of hsi");
ylabel("SNR");
legend('slice SNR','noise SNR','GAN target SNR','GAN result SNR','GAN noisy SNR');
end