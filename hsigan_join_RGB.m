function hsigan_join_RGB(img)
[a b c]=size(img);
for n=1:c
    IM_slice=img(:,:,n);
G=IM_slice;
imagesc(G);
% Now make an RGB image that matches display from IMAGESC:
C = colormap;  % Get the figure's colormap.
L = size(C,1);
% Scale the matrix to the range of the map.
Gs = round(interp1(linspace(min(G(:)),max(G(:)),L),1:L,G));
I = reshape(C(Gs,:),[size(Gs) 3]); % Make RGB image from scaled.
IM_slice_RGB=I;    %// Adjust intensities in image I to range from 0 to 1  
I = I - min(I(:));
I = I / max(I(:));
v = var(I(:)) / sqrt(10);
    IM_noise = imnoise(I,'gaussian',0, v);
    
      imwrite(IM_slice_RGB,sprintf('%03d.png',n));
      h=histogram(IM_slice_RGB);
      saveas(h, "histo_slice_"+n, 'jpg');
    
      imwrite(IM_noise,sprintf('noise_%03d.png',n));
      hnoisy=histogram(IM_noise);
      saveas(hnoisy, "histo_slice_noise_"+n, 'jpg');

     IM_pair= [IM_slice_RGB IM_noise];
     imwrite(IM_pair,sprintf('pair_%03d.png',n));
end
