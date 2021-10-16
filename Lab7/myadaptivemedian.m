function output=myadaptivemedian(a,smax)
  [M,N]=size(a);
%[m,n]=size(window);
i=(smax-1)/2;
j=(smax-1)/2;
new=zeros(M+2*i,N+2*j);
new(i+1:M+i,j+1:N+j)=a;
output=zeros(M,N);
for k=i+1:M+i
  for l=j+1:N+j
    s=3;
    flag=0;
    while(s<=smax)
       p=(s-1)/2;
       q=(s-1)/2;
      s1=new(k-p:k+p,l-q:l+q);
      zmax=max(max(s1));
      zmin=min(min(s1));
      zmed=median(median(s1));
      z=new(k,l);
      a1=zmed-zmin;
      a2=zmed-zmax;
      if(a1>0 && a2<0)
        b1=z-zmin;
        b2=z-zmax;
        if(b1>0 && b2<0)
          output(k-i,l-j)=z;
        else
          output(k-i,l-j)=zmed;
         endif
         flag=1;
        break
     else 
        s=s+2;
      endif
    endwhile
    if(flag==0)
      output(k-i,l-j)=z;
    endif
  endfor
endfor
output=uint8(output);
endfunction
