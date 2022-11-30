function RESIZE()
    location = 'C:\Users\ulku\Documents\MATLAB\test_a\test_a\gt\*.png';       %  folder in which your images exists
    ds = imageDatastore(location);       %  Creates a datastore for all images in your folder

    n=1;
    while hasdata(ds) 
         im = read(ds) ; 
         im_son=imresize(im,[240 360]);    
         imwrite(im_son,sprintf('%d_real.png',n));

          n=n+1;
    end
end