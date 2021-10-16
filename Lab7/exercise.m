clc
clear all
close all
pkg load image
image=imread('gauss.tif');
figure
imshow(image);
output=myarith(image,3);
figure
imshow(output);
output=myarith(image,5);
figure
imshow(output);
output=myarith(image,9);
figure
imshow(output);

output=mygeo(image,3);
figure
imshow(output);
output=mygeo(image,5);
figure
imshow(output);

output=mygeo(image,7);
figure
imshow(output);
output=mygeo(image,9);
figure
imshow(output);