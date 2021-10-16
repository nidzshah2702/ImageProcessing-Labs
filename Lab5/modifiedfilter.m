function output=modifiedfilter(a,window)
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
endfunction
