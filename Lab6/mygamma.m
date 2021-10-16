function noisy=mygamma(mu,sigma,img)
  [M,N]=size(img);
  noise=round(randg(M,N));
  noisy=uint8(img+noise);
endfunction