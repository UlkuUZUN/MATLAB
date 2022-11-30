function hsigan_join(img)
[a b c]=size(img);


for n=1:c
    G=img(1:144,1:256,n);
    %IM_slice=uint8(255*mat2gray(G)); bunu denedim ama genaratorda hata veriyor
    IM_slice=mat2gray(G);
    imwrite(IM_slice,sprintf('%03d_partial.png',n));
    
    
    IM_partial_noisy=imnoise(IM_slice,'gaussian');
    imwrite(IM_partial_noisy,sprintf('%03d_partial_noisy.png',n));
    
    %imwrite first checks the data type prior to writing the file to
    %determine how to treat the values in the input.If the input is double,
    %is assumes that the range is 0 to 1. ?f the input is a uint8 then it
    %assumes 0-255
    
    M_pair_partial = [IM_partial_noisy IM_slice];
     a = padarray(M_pair_partial,56,0,'pre');
     b = padarray(a,56,0,'post');
    imwrite(b,sprintf('%03d_training.png',n));
    
    %IM_noise = impulsenoise2(IM_slice);
 
    %result=imshowpair(IM_slice, IM_noise, 'montage');
    %imwrite(result,sprintf('%03d_pair_rgb.jpeg',n));
    %Don't save the figure at all. 
    %Save the image itself with imwrite(). 
    %It will save the actual pixel values. 
    %If you displayed it stretched, for example with the [] in imshow,
    %then if you recall it and display it without stretching, it will look reduced in contrast. 
    %But the digital values will be identical. If you want what is displayed,
    %which may not be the actual image values but the displayed image values, 
    %then use getframe() followed by imwrite().
   
   %IM_pair_nature = [IM_slice IM_slice];
   %imwrite(uint8(IM_pair_nature),sprintf('pair_nature_%03d.jpeg',n));
end

end