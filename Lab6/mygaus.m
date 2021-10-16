function noisy=mygaus(mu,sigma,img)
  [M,N]=size(img);
  noise=mu+round(sigma*randn(M,N));
  noisy=uint8(img+noise);
endfunction