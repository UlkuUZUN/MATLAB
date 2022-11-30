function PSNR_SSIM()
%     location = 'C:\Users\ulku\Documents\MATLAB\test_a\test_a\gt\*.png';       %  folder in which your images exists
%     ds = imageDatastore(location);       %  Creates a datastore for all images in your folder
%     
%     location_rd = 'C:\Users\ulku\Documents\MATLAB\test_a\test_a\data\*.png';       %  folder in which your images exists
%     ds_rd = imageDatastore(location_rd);       %  Creates a datastore for all images in your folder


     location = 'C:\Users\ulku\Documents\MATLAB\gt_resize_matlab_order\*.png';       %  folder in which your images exists
     ds = imageDatastore(location);       %  Creates a datastore for all images in your folder
     
     location_rd = 'C:\Users\ulku\Documents\MATLAB\raindrop_resize_matlab_order\*.png';       %  folder in which your images exists
     ds_rd = imageDatastore(location_rd);       %  Creates a datastore for all images in your folder


    n=1;
   
    while hasdata(ds) &&  hasdata(ds_rd)
         im_gt = read(ds) ; 
         im_rd = read(ds_rd);       
            
         
        [peaksnr, snr] = psnr(im_rd,im_gt);
        [ssimval, ssimmap] = ssim(im_rd,im_gt);
        fprintf('\n AFTER RESIZE****************');
        
        fprintf('\n The n value is %f',n);
        fprintf('\n The Peak-SNR value is %0.4f',peaksnr);
        fprintf('\n The SNR value is %0.4f',snr);
        fprintf('\n The SSIM value is %0.5f',ssimval);
        
        n=n+1;
         
    end
end