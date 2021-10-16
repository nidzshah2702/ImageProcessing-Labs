function output=myqharm(a,s,q)
  [M,N]=size(a);
%[m,n]=size(window);
i=(s-1)/2;
j=(s-1)/2;
new=zeros(M+2*i,N+2*j);
new(i+1:M+i,j+1:N+j)=a;
output=zeros(M,N);
for k=i+1:M+i
  for l=j+1:N+j
    s1=new(k-i:k+i,l-j:l+j);
    s1=double(s1);
    output(k-i,l-j)=sum(sum(s1.^(q+1)))/sum(sum(s1.^(q)));
  endfor
endfor
output=uint8(output);
endfunction
