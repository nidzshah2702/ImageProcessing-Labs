function noisy=mysaltpeppernoise(p,img)
  [M,N]=size(img);
  
  px=M*N*p;
  for i=1:1:px
    p=round(randi(M));
    q=round(randi(N));
    if(round(rand())==0)
    img(p,q)=255;
  else 
    img(p,q)=0;
   
   endif
 endfor
   noisy=img;
    
endfunction
