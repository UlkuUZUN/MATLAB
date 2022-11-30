function absolute_difference_images_minus
a = imread('48_15shift_gaussian_output.png');

b = imread('48_nonshift_output.png');

D= imabsdiff(a, b); 

imwrite(D*5,'abs_diff_nonshift_GAN_plus5_Canny.png');


