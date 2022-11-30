function hsi_noise_join_RGB(img)
[a b c]=size(img);
for n=1:c
    IM_slice=img(:,:,n);


    IM_noise =imnoise(IM_slice,'salt & pepper',0.02);
    
      imwrite(IM_slice,sprintf('%d.png',n));
      h=histogram(IM_slice);
      saveas(h, "histo_slice_"+n, 'jpg');
    
      imwrite(IM_noise,sprintf('saltpepper_noise_%d.png',n));
      hnoisy=histogram(IM_noise);
      saveas(hnoisy, "histo_slice_noise_"+n, 'jpg');

     IM_pair= [IM_slice IM_noise];
     imwrite(IM_pair,sprintf('pair_%d.png',n));
end
