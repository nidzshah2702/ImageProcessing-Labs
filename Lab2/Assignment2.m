#In a survaillance system, two frames of the captured videos are given as image
#'1.jpg' and '2.jpg' Apply image subtraction to locate the foreground.

image1=double(imread('1.jpg'));
image2=double(imread('2.jpg'));
sub=image1-image2;
figure()
i=min(min(sub))*-1
j=sub+i;
imshow(1-j/max(max(j)));

#Take your own black and white photo. Resize it to 256x256. Also consider given
#image 3.jpg. Demonstrate the logical operations like 'and', 'or', 'not' using these
#two images . Justify the results.

image1=imread('testimage1.jpg');
image1=imresize(image1,[256,256]);
a1=im2bw(image1);
a2=imread('3.jpg');
a=and(a1,a2);
o=or(a1,a2);
figure();
imshow(a);
title('and image');
figure();
imshow(o);
title('or image');
n=not(a1);
figure();
imshow(n);
title('not image');

#Consider image 4.jpg, 5.jpg and 6.jpg as input and apply arithmatic operations on
#input image to generate 7.jpg as output image.
 
mask=imresize(imread('5.jpg'),[256,256]);
input=imresize(imread('4.jpg'),[256,256]);
backg=imresize(imread('6.jpg'),[256,256]);
m1=im2double(mask);
i=im2double(input);
b=im2double(backg);
o1=i.*m1;
mneg=1-m1;
o2=b.*mneg;
figure();
imshow(o1+o2);
title('output image');
#Take your own grayscale photo and apply 'negative' transformation
image2=imread('testimage1.jpg');
image2=imresize(image2,[256,256]);
gr=im2double(rgb2gray(image1));
figure();
imshow(gr);
neg=1-gr;
figure();
imshow(neg);
title('image negative');
#Consider image 8.jpg. Enhance the image by applying the log transformation.
i=imread('8.jpg');
a=1+i;      #a=double(1+i)
figure();
imshow(a);
l=log(a);
figure();
imshow(l/max(max(l)));
title('log transformation');
#Consider image 9.jpg and 10.jpg and enhance them with power law
#transformation. 
image=imread('9.jpg');
a=im2double(image);
figure();
imshow(image);
c=1*a.**0.5;
figure()
imshow(c/max(max(c)));
image=imread('10.jpg');
a=im2double(image);
#figure();
imshow(image);
c=1*a.**4;
figure()
imshow(c/max(max(c)));


#Consider your over exposed photo(that you generated for assignment 1)and
#enhance it by power law transformation. Specify the value of gamma which is
#suitable for this enhancement.
image=imread('testimage.jpg');
gr=rgb2gray(image);
id=im2double(gr-90);
i=id;
figure();
imshow(i);
ex=i.**0.4;
figure();
imshow(ex/max(max(ex)));