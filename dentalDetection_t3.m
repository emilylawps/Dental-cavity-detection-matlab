clc
close all
clear all

%Read image files
I = imread('case2.jpg');

%Convert images to grayscale
gray = rgb2gray(I);

%Show image and histogram
figure;
subplot(3,2,1), imshow(I), title('Original');
subplot(3,2,3), imshow(gray), title('Grayscale');

%Filter image using median filtering
fil = medfilt2(gray,[3 3]);
subplot(3,2,4), imshow(fil), title('Median filter');

%Sharpen the image
sharp = imsharpen(fil);
subplot(3,2,5), imshow(fil), title('Sharpen image');
subplot(3,2,6), imhist(fil), title('Histogram of Sharpen img');

%Convert image to binary
bin = roicolor(sharp, 65, 255);% all pixels in (65,255) will be 1 and white
figure, imshow(bin), title('Binary image'); % the rest is 0 which is black

%calculate percentage of cavity
white = nnz(bin)                        %total white pixels (non cavity)
black = numel(bin)-white                %total black pixels (cavity)
blackPercent = (black/numel(bin))*100   %percentage of black pixels

