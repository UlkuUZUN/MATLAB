function absolute_difference_images


I = imread('47shift_gaussian_test.png');
output = imread('output.png');
K=imabsdiff(I,output);
Z=imsubtract(I,output);
M=imshowpair(I,output);
imwrite(K,'abs_diff_47shift_GAN.png');
imwrite(Z,'subt_47shift_GAN.png');
imwrite(M,'showpair_47shift_GAN.png');

