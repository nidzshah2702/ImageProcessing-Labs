clc
clear all
close all
pkg load image
image=imread('testimage2.jpg');
image=rgb2gray(image);
image=imresize(image,[500,500]);
peppernoise=mypeppernoise(0.4,image);
figure
imshow(peppernoise);
imwrite(peppernoise,'pepper.jpg');
saltpepper=mysaltpeppernoise(0.2,image);
imwrite(saltpepper,'saltpeppernoise.jpg');
figure
imshow(saltpepper);
saltnoise=mysaltnoise(0.2,image);
figure
imshow(saltnoise);
imwrite(saltnoise,'salt.jpg');
output=myqharm(saltnoise,5,0);
figure
imshow(output);
output=myqharm(peppernoise,5,0);
figure
imshow(output);
output=myqharm(saltpepper,5,0);
figure
imshow(output);