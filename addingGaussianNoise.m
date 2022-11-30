function addingGaussianNoise()
location = 'C:\Users\ulku\Documents\MATLAB\test_groundtruth_resized_256\*.png';       %  folder in which your images exists
ds = imageDatastore(location);       %  Creates a datastore for all images in your folder

i=1;
while hasdata(ds) 
    S=10;
    I = read(ds) ;             % read image from datastore
    J = double(I) + S.*randn(size(I));
    filename = sprintf( '%i_noise.png',i);     
    imwrite(uint8(J),filename);
    
    i=i+1;
end