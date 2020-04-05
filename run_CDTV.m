%% Title: Coefficients-Driven Total Variation for Image Denoising

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen and Ghazali Sulong. 
% "Attenuating noise from computed tomography medical images using a coefficients-driven total variation denoising algorithm." 
% International Journal of Imaging Systems and Technology, vol. 24, no. 4, (2014): pp. 350-358. DOI: 10.1002/ima.22112
%% INPUTS
% x --> is a given noisy image
% Lambda -- > controls the denoising strength 

%% OUTPUT
% CDTV --> denoised image


%% Starting implementation %%
clear all; close all; clc;

x = im2double(imread('NoisyCT.jpg'));
figure; imshow(x); title('Noisy Image')

Lambda = 700;
tic; CDTV = CDTV(x, Lambda); toc;
figure; imshow(CDTV); title('Denoised by CDTV')
% imwrite(CDTV,'out_CDTV.jpg')