close all;
clear all;
I=imread('D:\Document\image014.png');
 figure;
 imshow(I);
 title('原始图像')
I1=rgb2gray(I);
 figure;
imshow(I1);
title('灰度图像');
% thresh = graythresh(I1);     %自动确定二值化阈值

I4 = im2bw(I1,0.39);       %对图像二值化
figure;
imshow(I4);
I3=edge(I4,'canny');
[row,col]=size(I3);
% g1=im2double(I);
 

 g1(I3)=255;
figure;
imshow(I);
 for i=1:row
     for j=1:col
         if(I3(i,j)~=0)
             hold on
             plot(j,i,'g.');
         end
     end
 end




