image_name = [
    '48_gt.png'
%    'kodim12.png'
%   'image_Lena512rgb.png'
%     'image_House256rgb.png'
%    'image_Peppers512rgb.png'
%    'image_Baboon512rgb.png'
%    'image_F16_512rgb.png'
   ];

 sigma                = 25;

yRGB        = im2double(imread(image_name));  %% read a noise-free image
    randn('seed', 0);                          %% generate seed
    zRGB        = yRGB + (sigma/255)*randn(size(yRGB)); %% create a noisy image
    
    
imwrite(zRGB,'48_bm3d_noise_add.png');