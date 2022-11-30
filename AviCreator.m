function AviCreator()
writerObj = VideoWriter('YourAVI.avi');
open(writerObj);
A = imread('test.png');
writeVideo(writerObj, A);
close(writerObj);
end