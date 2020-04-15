clear;
close all;
clc;

path = 'chess_img.png';

imgRows = 512;
imgCols = 512;
chessRows = 512;
chessCols = 512;
rowPixelsInSquare = 64;
columnPixelsInSquare = 64;
borderColor = [1 0 0];
halfBorderThickness = 0;

img = createChessImage(imgRows, imgCols, chessRows, chessCols, rowPixelsInSquare, columnPixelsInSquare, borderColor, halfBorderThickness);
imshow(img);
imwrite(img, path);