#Assume that you are working on some image enhancement application 
#which gives following functionality to user. 1) Anti-aging: Removes the 
#wrinkles on the input face image. 2) Beautify: Removes facial marks. Take 
#any of the colour photo of a face and implement any (or both) of the above 
#functionality.

a=imread("b.jpg");
m=5;
n=5;
window=[1 4 7 4 1;4 16 26 16 4;7 26,41,26,7;4 16 26 16 4;1 4 7 4 1];

window=window/273;
figure
imshow(a);
output=a;
output(:,:,1)=modifiedfilter(a(:,:,1),window);
output(:,:,2)=modifiedfilter(a(:,:,2),window);
output(:,:,3)=modifiedfilter(a(:,:,3),window);
figure
imshow(output);
clear all
a=imread("wrinkle.jpg");
a=rgb2gray(a);
a=im2double(a);
imshow(a);
window=[-1 -1 -1;-1 16 -1;-1 -1 -1 ]
output=a;
output=modifiedfilter(a,window);

final=a.*output;

imshow(final);