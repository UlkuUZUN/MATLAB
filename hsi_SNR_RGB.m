function hsi_SNR_RGB(img)
[a b c]=size(img);
for n=1:c
    
    thisFileName_real = fullfile('C:\Users\sarguMac\Documents\MATLAB',strcat(int2str(n),'.png'));
   IM_gelen_real=imread(thisFileName_real);
   real=im2double(IM_gelen_real);
  
   thisFileName = fullfile('C:\Users\sarguMac\Documents\MATLAB',strcat('saltpepper_noise_',int2str(n),'.png'));
   IM_gelen=imread(thisFileName);
   noise=im2double(IM_gelen);
   
  real_SNR(n)=10*log(mean(real(:))/std(real(:)));
  noise_SNR(n)=10*log(mean(noise(:))/std(noise(:)));
 

end
plot(real_SNR,'r'); hold on;
plot(noise_SNR,'b--o');
title("The signal-to-noise ratio (SNR) of different band of HSI");
xlabel("bands of hsi");
ylabel("SNR");

end