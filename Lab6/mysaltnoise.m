function noisy=mysaltnoise(p,img)
  [M,N]=size(img);
  
  px=M*N*p;
  for i=1:1:px
    m=round(randi(M));
    n=round(randi(N));
    img(m,n)=255;
    
  endfor
   noisy=img;
    
endfunction
