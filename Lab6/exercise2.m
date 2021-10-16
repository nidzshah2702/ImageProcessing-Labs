clear all
close all
image=imread("testimage2.jpg");
image=rgb2gray(image);
image=imresize(image,[600,600]);
figure
imshow(image);
hist=imhist(image);
figure
stem(0:255,hist);

n=mysaltpeppernoise(rand(),image);
y=imhist(n);
figure
  stem(0:255,y);
   figure
  imshow(n)
  
  
no=mypeppernoise(0.2,n);
y=imhist(no);
figure
  stem(0:255,y);
   figure
  imshow(no)
  
a=0.06

n=mygaus(2,0.06,image);
y=imhist(n);
figure
  stem(0:255,y);
   figure
  imshow(n)
  
n1=imnoise(im2double(image),'gaussian',2,0.06);

 input=n1; 
  smax=255/255;
  
rmin=min(min(input));
rmax=max(max(input));
smin=0/255;
m=(smax-smin)/(rmax-rmin);
c=smin-m*rmin;
output=input.*m+c;
figure();
imshow(output);
y=imhist(output);
figure
  stem(0:255,y);
   