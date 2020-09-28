 %Read the image
img = imread('image.jpg');

%Get the size (rows and columns) of the image 
[r,c] = size(img);
rr=r/3;
%Wrire code to split the image into three equal parts and store them in B, G, R channels

B=imcrop(img,[1,1,c-1,rr-1]);
G=imcrop(img,[1,1*rr+1,c-1,rr-1]);
R=imcrop(img,[1,2*rr+1,c-1,rr-1]);

%concatenate R,G,B channels and assign the RGB image to ColorImg variable
ColorImg(:,:,1) = R;
ColorImg(:,:,2) = G;
ColorImg(:,:,3) = B;
imshow(ColorImg)
