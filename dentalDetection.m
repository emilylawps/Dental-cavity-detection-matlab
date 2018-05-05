clc
close all
clear all

%Read image files
t1 = imread('t1.jpg');

%Convert images to grayscale
a = rgb2gray(t1);

%Show image and histogram
figure;
subplot(4,2,1), imshow(a), title('t1');
figure;
subplot(4,2,1), imshow(a), title('t1');
subplot(4,2,2), imhist(a), title('Histogram t1');

%BW=roicolor(I, 110, 255); % makes a binary image
% figure, imshow(BW) % all pixels in (110, 255) will be 1 and white
		     % the rest is 0 which is black
             
%  figure, imhist(BW);