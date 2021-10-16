clc
close all
clear 
#Take any family photo of yours – convert it into grayscale- reduce it’s contrast by using 
#the function that was defined during lab session. Enhance the contrast of that image using 
#piecewise linear operation for contrast stretching.
#3. Apply thresholding to any of your gray scale photo
#Contrast Stretching
image=imread('test.jpg');
image=rgb2gray(image);
figure();
imshow(image);
red=reduce(image);
figure();
imshow(red);
input=red;
smax=255/255;
rmin=min(min(input));
rmax=max(max(input));
smin=0/255;
m=(smax-smin)/(rmax-rmin);
c=smin-m*rmin;
output=input.*m+c;
#figure();
#imshow(output);
#title('contrast stretching');
#question3

output=image>98;
#figure();
#imshow(output);
#title("thresholding");

#Take your photo and separate out its bit plains. Reconstruct the given image using higher 
#order 2 bit planes. Reconstruct the given image using higher order 4 bit planes. Experiment 
#with the bit planes and derive your conclusions.
a=imread('test.jpg');
a=rgb2gray(a);
imshow(a);

for i=1:8
  bp(:,:,i)=bitget(a,i);
  subplot(2,4,i);
  imshow(bp(:,:,i))
  
endfor

sum1=bp(:,:,1);
for i=1:4
  sum1=sum1+bp(:,:,i)*2^(i-1);
endfor
figure();
imshow(uint8(sum1));


#Perform intensity slicing to separate out red green baloons form the image 1(check: 
#lab3images) given
input=imread('image1.jpg');
figure
imshow(input);

[m,n,p]=size(input);
b=zeros(m,n);
for i=1:m
  for j=1:n
    if(input(i,j,1)<150 && input(i,j,2)>150 && input(i,j,3)<50 )
      b(i,j)=1;
     else
      b(i,j)=0;
     endif
  endfor
endfor
figure
imshow(b);
figure
imshow(input.*b);

