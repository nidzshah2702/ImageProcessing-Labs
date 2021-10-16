clear
clc
close all
image=imread("ili.png");
image=rgb2gray(image);
figure
imshow(image);
image=im2double(image);
I=log(1+image);
%image=image/max(max(image));
figure
imshow(image);
pkg load image
[m,n]=size(image)
M=2*m;
N=2*n;
sigma=10;
[X, Y] = meshgrid(1:N,1:M);
centerX = ceil(N/2); 
centerY = ceil(M/2); 
gaussianNumerator = (X - centerX).^2 + (Y - centerY).^2;
H = exp(-gaussianNumerator./(2*sigma.^2));
H = 1 - H; 

H = fftshift(H);



IfT = fft2(I, M, N);
Iout = real(ifft2(H.*IfT));
Iout = Iout(1:size(I,1),1:size(I,2));

Ihmf = exp(Iout) - 1;

figure
imshow(uint8(Ihmf));