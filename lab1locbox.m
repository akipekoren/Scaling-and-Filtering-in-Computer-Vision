function Z = lab1locbox(img,k)


[r,c,ch] = size(img);

I_out = zeros((2.*k+1),(2.*k+1));
for i=(k+1):1:(r-k-1)
    for j=(k+1):1:(c-k-1)
        subImg = img(i-k:i+k, j-k:j+k);
        value = mean(subImg(:));
        I_out(i,j)=value;
       
        
  
    end
end
 Z = I_out;
 
  
 subplot(2,2,1)
imshow(uint8(img))
title('New picture')
 
 subplot(2,2,2)
imshow(uint8(Z))
title('New picture')

 subplot(2,2,2)
imshow(uint8(Z))
title('New picture')

end