function D = lab1condscale(img1,img2)



mean_main = mean(img1(:));


mean_ref = mean(img2(:));


std_main = std(img1(:));
std_ref = std(img2(:));


a = mean_ref*(std_main / std_ref) - mean_main;

b = (std_ref /std_main);

D = b.*(img1 + a);

figure
subplot(2,2,1)
imshow(uint8(img1))
title('Old picture')

subplot(2,2,3)
imshow(uint8(img2))
title('Reference picture')



subplot(2,2,2)
imshow(uint8(D))
title('New picture')



end

