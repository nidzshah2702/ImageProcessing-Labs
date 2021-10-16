noisy=imread("pepper.tif");
output=myarith(noisy,3);
figure
imshow(output);

output=myarith(noisy,5);
figure
imshow(output);
output=mygeo(noisy,3);
figure
imshow(output);

output=myqharm(noisy,3,-1);
figure
imshow(output);
output=mymedian(noisy,3);
figure
imshow(uint8(output));
output=mymedian(output,3);
figure
imshow(uint8(output));