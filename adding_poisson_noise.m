function adding_poisson_noise()
I = imread('48.png');
J = imnoise(I,'poisson');
imwrite(uint8(J),'48_add_noise_poisson.png');