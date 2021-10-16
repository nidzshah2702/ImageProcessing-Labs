white=uint8(ones(5,5)*170);
black=uint8(ones(5,5)*50);
f=0;
myimage=uint8(zeros(40,40));
for i=1:8
  for j=1:8
    if(f==0)
      f=1
      myimage((i-1)*5+1:i*5,(j-1)*5+1:j*5)=black;
     else
      f=0
      myimage((i-1)*5+1:i*5,(j-1)*5+1:j*5)=white;
    endif
   endfor
   f=1-f;
endfor

imshow(myimage);
hist=imhist(myimage);

figure
stem(0:255,hist);
n=mygaus(35,20,myimage);
y=imhist(n);
figure
  stem(0:255,y);
  figure
  imshow(n)
  k=5;
  n=myexpo(k,n);
y=imhist(n);
figure
  stem(0:255,y);
  figure
  imshow(n)