clear
clc
close all
image=imread("saltpeppernoise.jpg");

figure
imshow(image);
image=im2double(image);
image=log(1+image);
%image=image/max(max(image));
figure
imshow(image);
pkg load image
[m,n]=size(image);

fta=fft2(image);
filt=zeros(m,n);
d0=300;     
for i=1:m
  for j=1:n
    d=sqrt((i-m/2)^2+(j-n/2)^2);
    filt(i,j)=e^(-d^2/(2*d0^2));
  endfor
endfor
figure
imshow(1-filt)
g=fta.*(1-filt);
figure
imshow(g);
sg=real(ifft2(g));
out=sg;
out1=(out(1:m,1:n));
figure
imshow(out1);
Ihmf = exp(out1)-1;
figure
imshow(Ihmf,[]);