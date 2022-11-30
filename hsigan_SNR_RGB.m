function hsigan_SNR_RGB(img)
[a b c]=size(img);
for n=1:c
    IM_slice=img(:,:,n);
G=IM_slice;
imagesc(G);
% Now make an RGB image that matches display from IMAGESC:
C = colormap;  % Get the figure's colormap.
L = size(C,1);
% Scale the matrix to the range of the map.
Gs = round(interp1(linspace(min(G(:)),max(G(:)),L),1:L,G));
I = reshape(C(Gs,:),[size(Gs) 3]); % Make RGB image from scaled.
%// Adjust intensities in image I to range from 0 to 1  
I = I - min(I(:));
I = I / max(I(:));
v = var(I(:)) / sqrt(10);
    IM_noise = imnoise(I,'gaussian',0, v);
  
   targetFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_oneout_1000\images\target',strcat('pair_',int2str(n),'.png'));
   IM_target=imread(targetFileName);
   GAN_target=im2double(IM_target);
   
   thisFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_oneout_1000\images\output',strcat('pair_',int2str(n),'.png'));
   IM_gelen=imread(thisFileName);
   GAN_result=im2double(IM_gelen);
   
    noisyFileName = fullfile('C:\Users\sarguMac\Desktop\deneme\ID-CGAN-master\image\pavia_jpeg\paviaU_RGB\paviaU_oneout_1000\images\input',strcat('pair_',int2str(n),'.png'));
   IM_noisy=imread(noisyFileName);
   GAN_noisy=im2double(IM_noisy);
   
   IM_slice_SNR(n)=10*log(mean(IM_slice(:))/std(IM_slice(:)));
   IM_noise_SNR(n)=10*log(mean(IM_noise(:))/std(IM_noise(:)));
   IM_GAN_target_SNR(n)=10*log(mean(GAN_target(:))/std(GAN_target(:)));
   IM_GAN_result_SNR(n)=10*log(mean(GAN_result(:))/std(GAN_result(:)));
   IM_GAN_noisy_SNR(n)=10*log(mean(GAN_noisy(:))/std(GAN_noisy(:)));
 
end% 
plot(IM_slice_SNR,'r'); hold on;
plot(IM_noise_SNR,'b--o');hold on;
plot(IM_GAN_target_SNR,'g--*');hold on;
plot(IM_GAN_result_SNR,'y--+');hold on;
plot(IM_GAN_noisy_SNR,'c--x');
title("The signal-to-noise ratio (SNR) of different band of HSI");
xlabel("bands of hsi");
ylabel("SNR");

end