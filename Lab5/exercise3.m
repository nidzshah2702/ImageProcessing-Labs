clc
close all
clear all
#Take any of your grey scale photo and blur it with weighted average filter. 
#Compare amount of blurring with the standard box filter of the same size
a=imread("testimage2.jpg");
a=rgb2gray(a);
a=imresize(a,[600,600]);

window=[1 2 2 2 1;1 2 2 2 1;2,4,4,4,2;1 2 2 2 1;1 2 2 2 1];
window=window/sum(sum(window));
output=modifiedfilter(a,window);
figure();
imshow(output);
m=5;
n=5;
window=(1/(m*n))*ones(m,n);

output=modifiedfilter(a,window);
figure();
imshow(output);
a=imread("testimage2.jpg");
a=rgb2gray(a);
a=imresize(a,[600,600]);
m=5;
n=5;
window=(1/(m*n))*ones(m,n);


for i=1:10
  output=modifiedfilter(a,window);
  a=output;
endfor

figure();
imshow(output);

figure
imshow(a);