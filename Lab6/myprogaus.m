function noisy=myprogaus(img,sigma,mu,p)
  [M,N]=size(img);
  
  px=M*N*p;
  noise=mu+round(sigma*randn(M,N));
  noisy=img;
  for i=1:1:px
    p=round(randi(M));
    q=round(randi(N));
    noisy(p,q)=noisy(p,q)+noise(p,q);
    
  endfor
    
endfunction
