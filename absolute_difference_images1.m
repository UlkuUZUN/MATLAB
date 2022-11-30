function absolute_difference_images1
a = imread('elsa1_15shift_output.png');

b = imread('elsa1_gt.png');

D= imabsdiff(a, b); 

imwrite(D+1,'abs_diff_nonshift_GAN_plus1.png');
imwrite(D+2,'abs_diff_nonshift_GAN_plus2.png');
imwrite(D+3,'abs_diff_nonshift_GAN_plus3.png');
imwrite(D+4,'abs_diff_nonshift_GAN_plus4.png');
imwrite(D+5,'abs_diff_nonshift_GAN_plus5.png');
imwrite(D+6,'abs_diff_nonshift_GAN_plus6.png');
imwrite(D+7,'abs_diff_nonshift_GAN_plus7.png');
imwrite(D+8,'abs_diff_nonshift_GAN_plus8.png');
imwrite(D+9,'abs_diff_nonshift_GAN_plus9.png');
imwrite(D+10,'abs_diff_nonshift_GAN_plus10.png');
imwrite(D+11,'abs_diff_nonshift_GAN_plus11.png');
imwrite(D+12,'abs_diff_nonshift_GAN_plus12.png');
