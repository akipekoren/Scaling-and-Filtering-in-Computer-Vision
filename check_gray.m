
function E = check_gray(Im)


if size(Im,3) == 3
    
Im2 = rgb2gray(Im);

E = Im2;


%subplot(2,2,2)
%imshow(E)
%title('Changed to gray')
else
    
 E =Im;
 %figure
%subplot(2,2,1)
%imshow(E)
%title('Already gray')


  


end
