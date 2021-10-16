# Observe border of image for results in (a). Justify the reason for dark 
#borders. Comment on thickness of the border and filter size. Suggest a way to 
#solve the issue. Implement your suggestion and show the code and results
a=imread("testimage2.jpg");
a=rgb2gray(a);
a=imresize(a,[600,600]);
#figure
#imshow(a);
m=9;
n=9;
window=(1/(m*n))*ones(m,n);

#newm=myfilter(a,window);
#figure
#imshow(newm);


 [M,N]=size(a);
[m,n]=size(window);
i=(m-1)/2;
j=(n-1)/2;
new=zeros(M+(m-1),N+(n-1));
new(i+1:M+j,j+1:N+j)=a;
new(i+1:M+i,1:j)=a(:,1:j);
new(i+1:M+i,N+j+1:N+j+j)=a(:,N-j+1:N);
new(1:i,j+1:N+j)=a(1:i,:);
new(M+i+1:M+i+i,j+1:N+j)=a(M-i+1:M,:);

output=zeros(M,N);
for k=i+1:M+i
  for l=j+1:N+j
    s=new(k-i:k+i,l-j:l+j);
    output(k-i,l-j)=sum(sum(s.*window));
  endfor
endfor
output=uint8(output);
figure
imshow(output);