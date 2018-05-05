clc
close all
clear all

%Read image files
t1 = imread('t1.jpg');
t2 = imread('t2.png');
t3 = imread('t3.jpg');
t4 = imread('t4.jpg');
t5 = imread('t5.jpg');
t6 = imread('t6.jpg');

%Convert images to grayscale
a = rgb2gray(t1);
%b = rgb2gray(t2);
c = rgb2gray(t3);
%d = rgb2gray(t4);
e = rgb2gray(t5);
f = rgb2gray(t6);

%Show image and histogram
figure;
subplot(4,2,1), imshow(a), title('t1');
subplot(4,2,2), imshow(c), title('t2');
subplot(4,2,3), imshow(e), title('t3');
subplot(4,2,4), imshow(f), title('t4');
figure;
subplot(4,2,1), imshow(a), title('t1');
subplot(4,2,2), imhist(a), title('Histogram t1');
subplot(4,2,3), imshow(c), title('t2');
subplot(4,2,4), imhist(c), title('Histogram t2');
subplot(4,2,5), imshow(e), title('t3');
subplot(4,2,6), imhist(e), title('Histogram t3');
subplot(4,2,7), imshow(f), title('t4');
subplot(4,2,8), imhist(f), title('Histogram t4');

%BW=roicolor(I, 110, 255); % makes a binary image
% figure, imshow(BW) % all pixels in (110, 255) will be 1 and white
		     % the rest is 0 which is black
             
%  figure, imhist(BW);