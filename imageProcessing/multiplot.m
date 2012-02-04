%
% Use multiplot() to display up to 9 images
% But may be used to display less than 9 images
% Example: >> multiplot(Lena, 'Lena', peppers, 'peppers, peanutButter, 'Crunchy or Creamy?')
%

function multiplot(im1,title1,im2,title2,im3,title3,im4,title4,im5,title5,im6,title6,im7,title7,im8,title8,im9,title9)



switch nargin
    case 2 
        figure, imshow(im1), title(title1);
    case 4
        figure, 
        subplot(1,2,1), imshow(im1), title(title1);
        subplot(1,2,2), imshow(im2), title(title2);
    case 6
        figure,
        subplot(1,3,1), imshow(im1), title(title1);
        subplot(1,3,2), imshow(im2), title(title2);
        subplot(1,3,3), imshow(im3), title(title3);
    case 8
        figure,
        subplot(2,2,1), imshow(im1), title(title1);
        subplot(2,2,2), imshow(im2), title(title2);
        subplot(2,2,3), imshow(im3), title(title3);
        subplot(2,2,4), imshow(im4), title(title4);
    case 10
        figure,
        subplot(2,3,1), imshow(im1), title(title1);
        subplot(2,3,2), imshow(im2), title(title2);
        subplot(2,3,3), imshow(im3), title(title3);
        subplot(2,3,4), imshow(im4), title(title4);
        subplot(2,3,5), imshow(im5), title(title5);
    case 12
        figure, 
        subplot(2,3,1), imshow(im1), title(title1);
        subplot(2,3,2), imshow(im2), title(title2);
        subplot(2,3,3), imshow(im3), title(title3);
        subplot(2,3,4), imshow(im4), title(title4);
        subplot(2,3,5), imshow(im5), title(title5);
        subplot(2,3,6), imshow(im6), title(title6);
    case 14
        figure,
        subplot(3,3,1), imshow(im1), title(title1);
        subplot(3,3,2), imshow(im2), title(title2);
        subplot(3,3,3), imshow(im3), title(title3);
        subplot(3,3,4), imshow(im4), title(title4);
        subplot(3,3,5), imshow(im5), title(title5);
        subplot(3,3,6), imshow(im6), title(title6);
        subplot(3,3,7), imshow(im7), title(title7);
    case 16
        figure, 
        subplot(3,3,1), imshow(im1), title(title1);
        subplot(3,3,2), imshow(im2), title(title2);
        subplot(3,3,3), imshow(im3), title(title3);
        subplot(3,3,4), imshow(im4), title(title4);
        subplot(3,3,5), imshow(im5), title(title5);
        subplot(3,3,6), imshow(im6), title(title6);
        subplot(3,3,7), imshow(im7), title(title7);
        subplot(3,3,8), imshow(im8), title(title8);
    case 18
        figure, 
        subplot(3,3,1), imshow(im1), title(title1);
        subplot(3,3,2), imshow(im2), title(title2);
        subplot(3,3,3), imshow(im3), title(title3);
        subplot(3,3,4), imshow(im4), title(title4);
        subplot(3,3,5), imshow(im5), title(title5);
        subplot(3,3,6), imshow(im6), title(title6);
        subplot(3,3,7), imshow(im7), title(title7);
        subplot(3,3,8), imshow(im8), title(title8);
        subplot(3,3,9), imshow(im9), title(title9);  
        
    otherwise
        disp('Bad Number Of Image Inputs and/or Titles')
end

