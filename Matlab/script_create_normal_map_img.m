clear;
close all;
clc;

rows = 512;
cols = 512;
channels = 3;

path = './normal_mapping_img.png';

half_rows = floor(0.5*rows);

img = zeros(rows,cols,channels);

%[R , G , B]=[0.5 , 0.5 , 1] //([R,G,B]-0.5)*2=[0,0,1]
img(:,:,1) = 0.5;
img(:,:,2) = 0.5;
img(:,:,3) = 1;

% img(half_rows+1:rows,:,1) = 1;
% img(half_rows+1:rows,:,2) = 0;
% img(half_rows+1:rows,:,3) = 0;

imshow(img);
imwrite(img , path);
