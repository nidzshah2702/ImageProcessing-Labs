function final=myhistmatch(a,spec)
 [s1,final1]=myhist(a);
[G,final2]=myhist(spec);
L=256;
s=zeros([1,256]);
#s1=[1,3,5,6,6,7,7,7]
#G=[0 0 0 1 2 5 6 7]

for i=0:1:(L-1)
  mindif=257;
  index=0;
  for j=0:(L-1)
    dif=abs(G(1,j+1)-s1(1,i+1));
    if(dif<mindif)
      mindif=dif;
      index=j;
    endif
  endfor
  s(1,i+1)=index;
endfor
[m,n]=size(a);
final=zeros(m,n);
for i=0:(L-1)
  final=final+(a==i)*s(i+1);
endfor
final=uint8(final);
endfunction