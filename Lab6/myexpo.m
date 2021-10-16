function noisy=mygaus(k,img)
  [M,N]=size(img);
  noise=round(k*rande(M,N));
  noisy=uint8(img+noise);
endfunction