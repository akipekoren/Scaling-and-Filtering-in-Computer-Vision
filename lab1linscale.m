function C = lab1linscale(img)




min_value = min(img(:));

max_value = max(img(:));

a = -min_value;

Gmax = 255;

b = Gmax / (max_value - min_value);

I_new = b.*(img + a);

C = I_new;

figure
subplot(2,2,1)
imshow(img)
title('Old picture')


subplot(2,2,2)
imshow(C)
title('New picture')

subplot(2,2,3)
imhist(img)
title('Old picture histogram')

subplot(2,2,4)
imhist(C)
title('New picture histogram')
end




