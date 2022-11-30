function combine_images(image)  

image_RGB = cat(3,image,image,image);
imwrite(image_RGB,'combine.png');