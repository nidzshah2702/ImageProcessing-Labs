function [s,final]=myhist(a)
 L=256
[m,n]=size(a);
his=zeros([1,256]);
for i=0:L-1
    his(1,i+1)=sum(sum(a==i));
endfor

pdf=his/m/n;
total(1)=pdf(1);
for i=1:(L-1)
  total(i+1)=total(i)+pdf(i+1);
endfor

s=(L-1)*total;
s=round(s);
final=zeros(m,n);
for i=0:(L-1)
  final=final+(a==i)*s(i+1);
endfor
final=uint8(final);
endfunction
