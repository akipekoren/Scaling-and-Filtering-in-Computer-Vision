function [X,Y ]= lab1locmaxmin(img,k)


[r,c,ch] = size(img);

I_out = zeros((2.*k+1),(2.*k+1));
for i=(k+1):1:(r-k-1)
    for j=(k+1):1:(c-k-1)
        subImg = img(i-k:i+k, j-k:j+k);
        value = max(subImg(:));
        value_2 = min(subImg(:));
        I_out(i,j)=value;
        I_out_2(i,j) = value_2;
       
        
  
    end
end
 X = I_out;
 Y = I_out_2;
 
  subplot(2,2,1)
imshow(uint8(X))
title('Old picture')
  
 subplot(2,2,2)
imshow(uint8(X))
title('Max value')
 
 subplot(2,2,3)
imshow(uint8(Y))
title('Min value')

end