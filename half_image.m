function half_image()
location = 'C:\Users\ulku\Documents\MATLAB\training3\*.jpg';       %  folder in which your images exists
ds = imageDatastore(location);       %  Creates a datastore for all images in your folder

i=1;
while hasdata(ds) 
    im = read(ds) ;             % read image from datastore
    n=fix(size(im,1)/2);
    A=im(1:n,:,:);
    B=im(n+1:end,:,:);
    imwrite(A,i+'real.png');
    imwrite(B,i+'rainy.png');
    i=i+1;
end
   

