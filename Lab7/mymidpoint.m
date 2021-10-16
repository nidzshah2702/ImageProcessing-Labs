function output=mymidpoint(a,s)
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
    output(k-i,l-j)=(max(max(s1))+min(min(s1)))/2;
  endfor
endfor
output=(output);
endfunction
