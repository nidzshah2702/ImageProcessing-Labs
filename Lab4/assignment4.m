close all
clc
#Can two visually different image have same histogram? If yes, synthesize two grayscale images 
#which are visually different but having same histogram and also show the histogram. If no, justify 
#your answer
a=imread('i.png');
a=rgb2gray(a);
L=256
[m,n]=size(a);
his=zeros([1,256]);
for i=0:L-1
    his(1,i+1)=sum(sum(a==i));
endfor

plot(0:255,his);
figure();

b=imread('b.png');
b=rgb2gray(b);
L=256
[m,n]=size(b);
his=zeros([1,256]);
for i=0:L-1
    his(1,i+1)=sum(sum(b==i));
endfor

plot(0:255,his);
figure();

a=imread("i.png");
a=rgb2gray(a);
hist(a,0:255);
#Take your color photograph taken in dark. Equalize it’s histogram.
#3. Perform histogram equalization of equalized image obtained. Is second pass of the histogram 
#equalization process useful? Justify your answer
a=imread("testimage.jpg");
figure();
imshow(a);
final(:,:,1)=myhist(a(:,:,1));
final(:,:,2)=myhist(a(:,:,2));
final(:,:,3)=myhist(a(:,:,3));
figure();
imshow(final);
[k,final1]=myhist(final);
figure
imshow(final1);

#Perform histogram equalization for image ‘test3.jpg’
a=imread("test3.tif");
[s,final]=myhist(a);
figure
imshow(final);
#Take any of your photograph, match it’s histogram with the histogram of image ‘test4.jpg’. plot 
#histogram of original image, template and matched image for all three channels
clear all
a=imread("testimage.jpg");
spec=imread("test4.jpg");
final(:,:,1)=myhistmatch(a(:,:,1),spec(:,:,1));
final(:,:,2)=myhistmatch(a(:,:,2),spec(:,:,2));
final(:,:,3)=myhistmatch(a(:,:,3),spec(:,:,3));
figure
imshow(final);


figure
for i=1:3
  his=histogram(final(:,:,i));
  subplot(1,3,i);
  plot(0:255,his);
endfor
