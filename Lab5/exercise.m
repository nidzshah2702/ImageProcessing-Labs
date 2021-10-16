#Take any of your grey scale photo and blur it with standard box filter of 
#size 3x3, 5x5 ,7x7 and 9x9. Comment on amount of blurring and filter size. 
#Assume padding of zeros
close all
a=imread("testimage2.jpg");
a=imresize(a,[600,600]);
a=rgb2gray(a);
[M,N]=size(a);
m=5;
n=5;
i=(m-1)/2;
j=(n-1)/2;
new=zeros(M+(m-1),N+(n-1));
new(i+1:M+j,j+1:N+j)=a;
window=(1/(m*n))*ones(m,n);
output=zeros(M,N);
for k=i+1:M+i
  for l=j+1:N+j
    s=new(k-i:k+i,l-j:l+j);
    output(k-i,l-j)=sum(sum(s.*window));
  endfor
endfor
figure
imshow(a);
figure
imshow(uint8(output));