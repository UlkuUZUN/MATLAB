function [PSNR_BM3D,I11] = BM3D_MRI_inner_function(im_orig,mask,input)
num=input.num;  
Lambda=input.Lambda; %Lambda parameter
La2=(Lambda);
Q1=mask;
I1=im_orig;
inner_iter_num1=input.inner_iter1;
inner_iter_num2=input.inner_iter2;
inner_iter_num=logspace(log10(inner_iter_num1),log10(inner_iter_num2),num); 
%%
sigma_bm3ds=input.sigma_bm3d;
final_noise=input.final_noise;
sigma_bm3d=logspace(log10(sigma_bm3ds),log10(final_noise),num); 
%%
I5=fft2(I1);          
index=find(Q1==1); 
I2=(double(I5)).*(Q1);  
I11=ifft2(I2);         % Inverse FFT - zero-filled result
PSNR_h1=sum(sum( abs(I1).^2 ));
%% BM3D-MRI iterations
for kp=1:num   
    for inner=1:inner_iter_num(kp)
    [NA,I3n] = BM3D_MRI_denoise(1,I11, sigma_bm3d(kp));  % BM3D denoising  
    I2=fft2(I3n);  
    I2(index)= (1/(1+(La2)))*((La2)*I2(index) + I5(index));   
    I11=(ifft2(I2));   
    end
PSNR_h2=sum(sum((I1-abs(I11)).^2 ));
PSNR_BM3D(kp)=10*log10(PSNR_h1/PSNR_h2); 
end
