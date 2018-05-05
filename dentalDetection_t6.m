clc
close all
clear all

%Read image files
I = imread('t6.jpg');

%Convert images to grayscale
gray = rgb2gray(I);

%Show image and histogram
figure;
subplot(2,1,1), imshow(I), title('t1');
subplot(2,1,2), imshow(gray), title('t1');

%Filter image using median filtering
fil = medfilt2(gray,[3 3]);
figure;
imshow(fil), title('Median filter');
%fil2 = filter2(fspecial('average',3),gray)/255;
%subplot(1,2,2),imshow(fil2), title('average filter');

%Sharpen the image 
figure;
sharp = imsharpen(fil);
subplot(1,2,1), imshow(fil), title('Sharpen image');
subplot(1,2,2), imhist(fil), title('Histogram t1');
%figure, imshow(imsharpen(fil2)),title('Sharpen ave');

%Convert image to binary
bin = roicolor(sharp, 60, 255);% all pixels in (120, 255) will be 1 and white
figure, imshow(bin), title('Binary image'); % the rest is 0 which is black
