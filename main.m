
% Author : Ahmet Kaan Ipekoren
% Date : October 7 2019
Im = imread('city.png');

img = check_gray(Im);

lin_Res = lab1linscale(img); % first assingnment


Im2 = imread('board.jpg');
img2 = check_gray(Im2);

img = double(img);
img2 = double(img2);
D = lab1condscale(img,img2); % second assingnment

Im3 = imread('jump.png');

img3 = check_gray(Im3);


S = lab1locbox(img3,3); % third assginment

Im4 = imread('currentImage.png');

img4 = check_gray(Im4);

[X,Y] = lab1locmaxmin(img4,3);


