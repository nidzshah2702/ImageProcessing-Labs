function noisy=myuniform(a,b,img)
  [M,N]=size(img);
  noise=uint8(round(a+(b-a)*rand(M,N)));
  noisy=img+noise;
endfunction
