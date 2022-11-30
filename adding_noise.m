function adding_noise()
S = 10;
I = imread('elsa1.png');
J = double(I) + S.*randn(size(I));
imwrite(uint8(J),'elsa1_add_noise_s10.png');

