function s=reduce(image)
  input=im2double(image);
  smax=100/255;
  rmin=min(min(input));
 
  rmax=max(max(input));
  
  smin=70/255;
  m=(smax-smin)/(rmax-rmin);
  c=smin-m*rmin;
  s=input.*m+c;
  
endfunction