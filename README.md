close all; clear all; clc;

I1 = imread('pout.tif'); %reading the image
figure, imshow(I1) %display the image
figure, imhist(I1); %histogram

I2 = histeq(I1);
figure, imshow(I2); 
figure, imhist(I2); 

I3 = imadjust(I1);
figure, imshow(I3);
figure, imhist(I3);

figure, 
subplot(3,2,1); imshow(I1); title('Original image')
subplot(3,2,2); imhist(I1); title('Histogram')
subplot(3,2,3); imshow(I2); title('gambaq 2nd')
subplot(3,2,4); imhist(I2); title('Histogram')
subplot(3,2,5); imshow(I3); title('gambaq 3rd')
subplot(3,2,6); imhist(I3); title('Histogram')

imwrite(I2,'pout2.tif');	
imfinfo('pout2.tif')
