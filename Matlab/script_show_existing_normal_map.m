clear;
close all;
clc;

path = './normalMap.png';
img = imread(path);
imshow(img);

imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);