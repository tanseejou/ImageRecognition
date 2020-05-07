
% sample code for pre-processing
% 1. read the file
% 2. convert to binary
% 3. Apply median filter of size [9x9]
% 4. resize the image to [100x100]. 
%
% F is the file to be pre-process


function [X,k] = PreProcess(F)
%read the file
%A = imread('000d9961-8136-4dee-9820-86e178777958_0L.png');
A = imread(F);
%A = imread('P2(1).jpg');
% do thresholding and convert to binary
level = graythresh(A);      %change to binary
BW = im2bw(A,level);        %graythresh=Global image threshold using Otsu's method
                            %im2bw=Convert image to binary image, based on threshold

 %subplot(221);imshow(A);title('original image');
 %subplot(222);imshow(BW);title('binary image');

%apply median filter
J = medfilt2(BW,[3 3]);
%subplot(223);imshow(J);title('applying median filter size 3x3');

% resized
k=imresize(J,[100 100]);  
%subplot(224);imshow(k); title('resize to 90x90');


X = reshape(k,[],100*100);

end
 
 







