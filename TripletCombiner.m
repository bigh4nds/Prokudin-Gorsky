%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Colorizing Prokudin-Gorsky Photos
%% CMPSCI 407, Assignment 2
%% Author: Christopher Finn
%% Date: 9/16/2012
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
im=imread('00149v.jpg');
tripletHeight=imSize(1)/3;
%%%%%%%%%%%%%%%%
%% First Triplet
%%%%%%%%%%%%%%%%
triplet1=im(0:tripletHeight,:);
%%%%%%%%%%%%%%%%%
%% Second Triplet
%%%%%%%%%%%%%%%%%
triplet2=im(tripletHeight:2*tripletHeight,:);
triplet2=circshift(triplet2,[3,1]);
%%%%%%%%%%%%%%%%
%% Third Triplet
%%%%%%%%%%%%%%%%
triplet3=im(2*tripletHeight:3*tripletHeight,:);
triplet3=circshift(triplet3,[9,1]);
%%%%%%%%%%%%%%
%% Combination
%%%%%%%%%%%%%%
finalIm(:,:,1)=triplet3; %Red
finalIm(:,:,2)=triplet2; %Green
finalIm(:,:,3)=triplet1; %Blue
imagesc(finalIm);
imwrite(finalIm,'00149v_output.jpg');









